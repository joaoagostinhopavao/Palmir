package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProdutorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Produtor.list(params), model:[produtorInstanceCount: Produtor.count()]
    }

    def show(Produtor produtorInstance) {
        respond produtorInstance
    }

    def create() {
        respond new Produtor(params)
    }

    @Transactional
    def save(Produtor produtorInstance) {
        if (produtorInstance == null) {
            notFound()
            return
        }

        if (produtorInstance.hasErrors()) {
            respond produtorInstance.errors, view:'create'
            return
        }

        produtorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'produtor.label', default: 'Produtor'), produtorInstance.id])
                redirect produtorInstance
            }
            '*' { respond produtorInstance, [status: CREATED] }
        }
    }

    def edit(Produtor produtorInstance) {
        respond produtorInstance
    }

    @Transactional
    def update(Produtor produtorInstance) {
        if (produtorInstance == null) {
            notFound()
            return
        }

        if (produtorInstance.hasErrors()) {
            respond produtorInstance.errors, view:'edit'
            return
        }

        produtorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Produtor.label', default: 'Produtor'), produtorInstance.id])
                redirect produtorInstance
            }
            '*'{ respond produtorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Produtor produtorInstance) {

        if (produtorInstance == null) {
            notFound()
            return
        }

        produtorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Produtor.label', default: 'Produtor'), produtorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'produtor.label', default: 'Produtor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
