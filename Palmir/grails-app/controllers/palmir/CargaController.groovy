package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CargaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Carga.list(params), model:[cargaInstanceCount: Carga.count()]
    }

    def show(Carga cargaInstance) {
        respond cargaInstance
    }

    def create() {
        respond new Carga(params)
    }

    @Transactional
    def save(Carga cargaInstance) {
        if (cargaInstance == null) {
            notFound()
            return
        }

        if (cargaInstance.hasErrors()) {
            respond cargaInstance.errors, view:'create'
            return
        }

        cargaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'carga.label', default: 'Carga'), cargaInstance.id])
                redirect cargaInstance
            }
            '*' { respond cargaInstance, [status: CREATED] }
        }
    }

    def edit(Carga cargaInstance) {
        respond cargaInstance
    }

    @Transactional
    def update(Carga cargaInstance) {
        if (cargaInstance == null) {
            notFound()
            return
        }

        if (cargaInstance.hasErrors()) {
            respond cargaInstance.errors, view:'edit'
            return
        }

        cargaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Carga.label', default: 'Carga'), cargaInstance.id])
                redirect cargaInstance
            }
            '*'{ respond cargaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Carga cargaInstance) {

        if (cargaInstance == null) {
            notFound()
            return
        }

        cargaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Carga.label', default: 'Carga'), cargaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'carga.label', default: 'Carga'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
