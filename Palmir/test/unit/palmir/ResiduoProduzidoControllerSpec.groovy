package palmir



import grails.test.mixin.*
import spock.lang.*

@TestFor(ResiduoProduzidoController)
@Mock(ResiduoProduzido)
class ResiduoProduzidoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.residuoProduzidoInstanceList
            model.residuoProduzidoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.residuoProduzidoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def residuoProduzido = new ResiduoProduzido()
            residuoProduzido.validate()
            controller.save(residuoProduzido)

        then:"The create view is rendered again with the correct model"
            model.residuoProduzidoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            residuoProduzido = new ResiduoProduzido(params)

            controller.save(residuoProduzido)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/residuoProduzido/show/1'
            controller.flash.message != null
            ResiduoProduzido.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def residuoProduzido = new ResiduoProduzido(params)
            controller.show(residuoProduzido)

        then:"A model is populated containing the domain instance"
            model.residuoProduzidoInstance == residuoProduzido
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def residuoProduzido = new ResiduoProduzido(params)
            controller.edit(residuoProduzido)

        then:"A model is populated containing the domain instance"
            model.residuoProduzidoInstance == residuoProduzido
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/residuoProduzido/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def residuoProduzido = new ResiduoProduzido()
            residuoProduzido.validate()
            controller.update(residuoProduzido)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.residuoProduzidoInstance == residuoProduzido

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            residuoProduzido = new ResiduoProduzido(params).save(flush: true)
            controller.update(residuoProduzido)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/residuoProduzido/show/$residuoProduzido.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/residuoProduzido/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def residuoProduzido = new ResiduoProduzido(params).save(flush: true)

        then:"It exists"
            ResiduoProduzido.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(residuoProduzido)

        then:"The instance is deleted"
            ResiduoProduzido.count() == 0
            response.redirectedUrl == '/residuoProduzido/index'
            flash.message != null
    }
}
