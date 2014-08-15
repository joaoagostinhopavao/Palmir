package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoResiduoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoResiduo.list(params), model:[tipoResiduoInstanceCount: TipoResiduo.count()]
    }

    def show(TipoResiduo tipoResiduoInstance) {
        respond tipoResiduoInstance
    }

    def create() {
        respond new TipoResiduo(params)
    }

    @Transactional
    def save(TipoResiduo tipoResiduoInstance) {
        if (tipoResiduoInstance == null) {
            notFound()
            return
        }

        if (tipoResiduoInstance.hasErrors()) {
            respond tipoResiduoInstance.errors, view:'create'
            return
        }

        tipoResiduoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoResiduo.label', default: 'TipoResiduo'), tipoResiduoInstance.id])
                redirect tipoResiduoInstance
            }
            '*' { respond tipoResiduoInstance, [status: CREATED] }
        }
    }

    def edit(TipoResiduo tipoResiduoInstance) {
        respond tipoResiduoInstance
    }

    @Transactional
    def update(TipoResiduo tipoResiduoInstance) {
        if (tipoResiduoInstance == null) {
            notFound()
            return
        }

        if (tipoResiduoInstance.hasErrors()) {
            respond tipoResiduoInstance.errors, view:'edit'
            return
        }

        tipoResiduoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoResiduo.label', default: 'TipoResiduo'), tipoResiduoInstance.id])
                redirect tipoResiduoInstance
            }
            '*'{ respond tipoResiduoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoResiduo tipoResiduoInstance) {

        if (tipoResiduoInstance == null) {
            notFound()
            return
        }

        tipoResiduoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoResiduo.label', default: 'TipoResiduo'), tipoResiduoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoResiduo.label', default: 'TipoResiduo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
