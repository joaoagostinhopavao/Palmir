package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ServicoNoProdutorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ServicoNoProdutor.list(params), model:[servicoNoProdutorInstanceCount: ServicoNoProdutor.count()]
    }

    def show(ServicoNoProdutor servicoNoProdutorInstance) {
        respond servicoNoProdutorInstance
    }

    def create() {
        respond new ServicoNoProdutor(params)
    }

    @Transactional
    def save(ServicoNoProdutor servicoNoProdutorInstance) {
        if (servicoNoProdutorInstance == null) {
            notFound()
            return
        }

        if (servicoNoProdutorInstance.hasErrors()) {
            respond servicoNoProdutorInstance.errors, view:'create'
            return
        }

        servicoNoProdutorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'servicoNoProdutor.label', default: 'ServicoNoProdutor'), servicoNoProdutorInstance.id])
                redirect servicoNoProdutorInstance
            }
            '*' { respond servicoNoProdutorInstance, [status: CREATED] }
        }
    }

    def edit(ServicoNoProdutor servicoNoProdutorInstance) {
        respond servicoNoProdutorInstance
    }

    @Transactional
    def update(ServicoNoProdutor servicoNoProdutorInstance) {
        if (servicoNoProdutorInstance == null) {
            notFound()
            return
        }

        if (servicoNoProdutorInstance.hasErrors()) {
            respond servicoNoProdutorInstance.errors, view:'edit'
            return
        }

        servicoNoProdutorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ServicoNoProdutor.label', default: 'ServicoNoProdutor'), servicoNoProdutorInstance.id])
                redirect servicoNoProdutorInstance
            }
            '*'{ respond servicoNoProdutorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ServicoNoProdutor servicoNoProdutorInstance) {

        if (servicoNoProdutorInstance == null) {
            notFound()
            return
        }

        servicoNoProdutorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ServicoNoProdutor.label', default: 'ServicoNoProdutor'), servicoNoProdutorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicoNoProdutor.label', default: 'ServicoNoProdutor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
