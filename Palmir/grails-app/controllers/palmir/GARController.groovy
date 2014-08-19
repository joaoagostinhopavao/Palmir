package palmir



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GARController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GAR.list(params), model:[GARInstanceCount: GAR.count()]
    }

    def show(GAR GARInstance) {
        respond GARInstance
    }

    def create() {
        respond new GAR(params)
    }

    @Transactional
    def save(GAR GARInstance) {
        if (GARInstance == null) {
            notFound()
            return
        }

        if (GARInstance.hasErrors()) {
            respond GARInstance.errors, view:'create'
            return
        }

        GARInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'GAR.label', default: 'GAR'), GARInstance.id])
                redirect GARInstance
            }
            '*' { respond GARInstance, [status: CREATED] }
        }
    }

    def edit(GAR GARInstance) {
        respond GARInstance
    }

    @Transactional
    def update(GAR GARInstance) {
        if (GARInstance == null) {
            notFound()
            return
        }

        if (GARInstance.hasErrors()) {
            respond GARInstance.errors, view:'edit'
            return
        }

        GARInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GAR.label', default: 'GAR'), GARInstance.id])
                redirect GARInstance
            }
            '*'{ respond GARInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GAR GARInstance) {

        if (GARInstance == null) {
            notFound()
            return
        }

        GARInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GAR.label', default: 'GAR'), GARInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'GAR.label', default: 'GAR'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
