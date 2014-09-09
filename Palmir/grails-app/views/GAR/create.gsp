
<%@ page import="palmir.GAR" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="GAR.create" default="Create GAR" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="GAR.list" default="GAR List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="GAR.create" default="Create GAR" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${GARInstance}">
            <div class="errors">
                <g:renderErrors bean="${GARInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
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
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'create', 'default': 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
