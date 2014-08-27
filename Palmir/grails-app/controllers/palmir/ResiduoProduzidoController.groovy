package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResiduoProduzidoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ResiduoProduzido.list(params), model:[residuoProduzidoInstanceCount: ResiduoProduzido.count()]
    }

    def show(ResiduoProduzido residuoProduzidoInstance) {
        respond residuoProduzidoInstance
    }

    def create() {
        respond new ResiduoProduzido(params)
    }

    @Transactional
    def save(ResiduoProduzido residuoProduzidoInstance) {
        if (residuoProduzidoInstance == null) {
            notFound()
            return
        }

        if (residuoProduzidoInstance.hasErrors()) {
            respond residuoProduzidoInstance.errors, view:'create'
            return
        }

        residuoProduzidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'residuoProduzido.label', default: 'ResiduoProduzido'), residuoProduzidoInstance.id])
                redirect residuoProduzidoInstance
            }
            '*' { respond residuoProduzidoInstance, [status: CREATED] }
        }
    }

    def edit(ResiduoProduzido residuoProduzidoInstance) {
        respond residuoProduzidoInstance
    }

    @Transactional
    def update(ResiduoProduzido residuoProduzidoInstance) {
        if (residuoProduzidoInstance == null) {
            notFound()
            return
        }

        if (residuoProduzidoInstance.hasErrors()) {
            respond residuoProduzidoInstance.errors, view:'edit'
            return
        }

        residuoProduzidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ResiduoProduzido.label', default: 'ResiduoProduzido'), residuoProduzidoInstance.id])
                redirect residuoProduzidoInstance
            }
            '*'{ respond residuoProduzidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ResiduoProduzido residuoProduzidoInstance) {

        if (residuoProduzidoInstance == null) {
            notFound()
            return
        }

        residuoProduzidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ResiduoProduzido.label', default: 'ResiduoProduzido'), residuoProduzidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'residuoProduzido.label', default: 'ResiduoProduzido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
