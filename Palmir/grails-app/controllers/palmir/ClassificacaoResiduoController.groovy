package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClassificacaoResiduoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ClassificacaoResiduo.list(params), model:[classificacaoResiduoInstanceCount: ClassificacaoResiduo.count()]
    }

    def show(ClassificacaoResiduo classificacaoResiduoInstance) {
        respond classificacaoResiduoInstance
    }

    def create() {
        respond new ClassificacaoResiduo(params)
    }

    @Transactional
    def save(ClassificacaoResiduo classificacaoResiduoInstance) {
        if (classificacaoResiduoInstance == null) {
            notFound()
            return
        }

        if (classificacaoResiduoInstance.hasErrors()) {
            respond classificacaoResiduoInstance.errors, view:'create'
            return
        }

        classificacaoResiduoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'classificacaoResiduo.label', default: 'ClassificacaoResiduo'), classificacaoResiduoInstance.id])
                redirect classificacaoResiduoInstance
            }
            '*' { respond classificacaoResiduoInstance, [status: CREATED] }
        }
    }

    def edit(ClassificacaoResiduo classificacaoResiduoInstance) {
        respond classificacaoResiduoInstance
    }

    @Transactional
    def update(ClassificacaoResiduo classificacaoResiduoInstance) {
        if (classificacaoResiduoInstance == null) {
            notFound()
            return
        }

        if (classificacaoResiduoInstance.hasErrors()) {
            respond classificacaoResiduoInstance.errors, view:'edit'
            return
        }

        classificacaoResiduoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ClassificacaoResiduo.label', default: 'ClassificacaoResiduo'), classificacaoResiduoInstance.id])
                redirect classificacaoResiduoInstance
            }
            '*'{ respond classificacaoResiduoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ClassificacaoResiduo classificacaoResiduoInstance) {

        if (classificacaoResiduoInstance == null) {
            notFound()
            return
        }

        classificacaoResiduoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ClassificacaoResiduo.label', default: 'ClassificacaoResiduo'), classificacaoResiduoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'classificacaoResiduo.label', default: 'ClassificacaoResiduo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
