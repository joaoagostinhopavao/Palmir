package palmir

class GARController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [GARInstanceList: GAR.list(params), GARInstanceTotal: GAR.count()]
    }

    def create = {
        def GARInstance = new GAR()
        GARInstance.properties = params
        return [GARInstance: GARInstance]
    }

    def save = {
        def GARInstance = new GAR(params)
        if (!GARInstance.hasErrors() && GARInstance.save()) {
            flash.message = "GAR.created"
            flash.args = [GARInstance.id]
            flash.defaultMessage = "GAR ${GARInstance.id} created"
            redirect(action: "show", id: GARInstance.id)
        }
        else {
            render(view: "create", model: [GARInstance: GARInstance])
        }
    }

    def show = {
        def GARInstance = GAR.get(params.id)
        if (!GARInstance) {
            flash.message = "GAR.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "GAR not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [GARInstance: GARInstance]
        }
    }

    def edit = {
        def GARInstance = GAR.get(params.id)
        if (!GARInstance) {
            flash.message = "GAR.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "GAR not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [GARInstance: GARInstance]
        }
    }

    def update = {
        def GARInstance = GAR.get(params.id)
        if (GARInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (GARInstance.version > version) {
                    
                    GARInstance.errors.rejectValue("version", "GAR.optimistic.locking.failure", "Another user has updated this GAR while you were editing")
                    render(view: "edit", model: [GARInstance: GARInstance])
                    return
                }
            }
            GARInstance.properties = params
            if (!GARInstance.hasErrors() && GARInstance.save()) {
                flash.message = "GAR.updated"
                flash.args = [params.id]
                flash.defaultMessage = "GAR ${params.id} updated"
                redirect(action: "show", id: GARInstance.id)
            }
            else {
                render(view: "edit", model: [GARInstance: GARInstance])
            }
        }
        else {
            flash.message = "GAR.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "GAR not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def GARInstance = GAR.get(params.id)
        if (GARInstance) {
            try {
                GARInstance.delete()
                flash.message = "GAR.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "GAR ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "GAR.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "GAR ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "GAR.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "GAR not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
