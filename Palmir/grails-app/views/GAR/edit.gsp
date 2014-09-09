
<%@ page import="palmir.GAR" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="GAR.edit" default="Edit GAR" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="GAR.list" default="GAR List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="GAR.new" default="New GAR" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="GAR.edit" default="Edit GAR" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${GARInstance}">
            <div class="errors">
                <g:renderErrors bean="${GARInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${GARInstance?.id}" />
                <g:hiddenField name="version" value="${GARInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroGAR"><g:message code="GAR.numeroGAR" default="Numero GAR" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: GARInstance, field: 'numeroGAR', 'errors')}">
                                    <g:textField name="numeroGAR" value="${fieldValue(bean: GARInstance, field: 'numeroGAR')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoGAR"><g:message code="GAR.tipoGAR" default="Tipo GAR" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: GARInstance, field: 'tipoGAR', 'errors')}">
                                    <g:textField name="tipoGAR" value="${fieldValue(bean: GARInstance, field: 'tipoGAR')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="servicoCliente"><g:message code="GAR.servicoCliente" default="Servico Cliente" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: GARInstance, field: 'servicoCliente', 'errors')}">
                                    <g:select name="servicoCliente.id" from="${palmir.ServicoNoProdutor.list()}" optionKey="id" value="${GARInstance?.servicoCliente?.id}" noSelection="['null': '']" />

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
