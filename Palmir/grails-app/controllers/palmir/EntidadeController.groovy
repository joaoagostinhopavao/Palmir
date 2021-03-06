package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EntidadeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Entidade.list(params), model:[entidadeInstanceCount: Entidade.count()]
    }

    def show(Entidade entidadeInstance) {
        respond entidadeInstance
    }

    def create() {
        respond new Entidade(params)
    }

    @Transactional
    def save(Entidade entidadeInstance) {
        if (entidadeInstance == null) {
            notFound()
            return
        }

        if (entidadeInstance.hasErrors()) {
            respond entidadeInstance.errors, view:'create'
            return
        }

        entidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'entidade.label', default: 'Entidade'), entidadeInstance.id])
                redirect entidadeInstance
            }
            '*' { respond entidadeInstance, [status: CREATED] }
        }
    }

    def edit(Entidade entidadeInstance) {
        respond entidadeInstance
    }

    @Transactional
    def update(Entidade entidadeInstance) {
        if (entidadeInstance == null) {
            notFound()
            return
        }

        if (entidadeInstance.hasErrors()) {
            respond entidadeInstance.errors, view:'edit'
            return
        }

        entidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Entidade.label', default: 'Entidade'), entidadeInstance.id])
                redirect entidadeInstance
            }
            '*'{ respond entidadeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Entidade entidadeInstance) {

        if (entidadeInstance == null) {
            notFound()
            return
        }

        entidadeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Entidade.label', default: 'Entidade'), entidadeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'entidade.label', default: 'Entidade'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
