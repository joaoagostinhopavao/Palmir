
<%@ page import="palmir.GAR" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="GAR.list" default="GAR List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="GAR.new" default="New GAR" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="GAR.list" default="GAR List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="GAR.id" />
                        
                   	    <g:sortableColumn property="numeroGAR" title="Numero GAR" titleKey="GAR.numeroGAR" />
                        
                   	    <g:sortableColumn property="tipoGAR" title="Tipo GAR" titleKey="GAR.tipoGAR" />
                        
                   	    <th><g:message code="GAR.servicoCliente" default="Servico Cliente" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${GARInstanceList}" status="i" var="GARInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${GARInstance.id}">${fieldValue(bean: GARInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: GARInstance, field: "numeroGAR")}</td>
                        
                            <td>${fieldValue(bean: GARInstance, field: "tipoGAR")}</td>
                        
                            <td>${fieldValue(bean: GARInstance, field: "servicoCliente")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${GARInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
