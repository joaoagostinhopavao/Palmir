package palmir



import grails.test.mixin.*
import spock.lang.*

@TestFor(ClassificacaoResiduoController)
@Mock(ClassificacaoResiduo)
class ClassificacaoResiduoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.classificacaoResiduoInstanceList
            model.classificacaoResiduoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.classificacaoResiduoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def classificacaoResiduo = new ClassificacaoResiduo()
            classificacaoResiduo.validate()
            controller.save(classificacaoResiduo)

        then:"The create view is rendered again with the correct model"
            model.classificacaoResiduoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            classificacaoResiduo = new ClassificacaoResiduo(params)

            controller.save(classificacaoResiduo)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/classificacaoResiduo/show/1'
            controller.flash.message != null
            ClassificacaoResiduo.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def classificacaoResiduo = new ClassificacaoResiduo(params)
            controller.show(classificacaoResiduo)

        then:"A model is populated containing the domain instance"
            model.classificacaoResiduoInstance == classificacaoResiduo
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def classificacaoResiduo = new ClassificacaoResiduo(params)
            controller.edit(classificacaoResiduo)

        then:"A model is populated containing the domain instance"
            model.classificacaoResiduoInstance == classificacaoResiduo
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/classificacaoResiduo/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def classificacaoResiduo = new ClassificacaoResiduo()
            classificacaoResiduo.validate()
            controller.update(classificacaoResiduo)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.classificacaoResiduoInstance == classificacaoResiduo

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            classificacaoResiduo = new ClassificacaoResiduo(params).save(flush: true)
            controller.update(classificacaoResiduo)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/classificacaoResiduo/show/$classificacaoResiduo.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/classificacaoResiduo/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def classificacaoResiduo = new ClassificacaoResiduo(params).save(flush: true)

        then:"It exists"
            ClassificacaoResiduo.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(classificacaoResiduo)

        then:"The instance is deleted"
            ClassificacaoResiduo.count() == 0
            response.redirectedUrl == '/classificacaoResiduo/index'
            flash.message != null
    }
}
