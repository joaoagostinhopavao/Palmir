
<%@ page import="palmir.GAR" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'GAR.label', default: 'GAR')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-GAR" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-GAR" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list GAR">
			
				<g:if test="${GARInstance?.servicoCliente}">
				<li class="fieldcontain">
					<span id="servicoCliente-label" class="property-label"><g:message code="GAR.servicoCliente.label" default="Servico Cliente" /></span>
					
						<span class="property-value" aria-labelledby="servicoCliente-label"><g:link controller="servicoNoProdutor" action="show" id="${GARInstance?.servicoCliente?.id}">${GARInstance?.servicoCliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${GARInstance?.numeroGAR}">
				<li class="fieldcontain">
					<span id="numeroGAR-label" class="property-label"><g:message code="GAR.numeroGAR.label" default="Numero GAR" /></span>
					
						<span class="property-value" aria-labelledby="numeroGAR-label"><g:fieldValue bean="${GARInstance}" field="numeroGAR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GARInstance?.tipoGAR}">
				<li class="fieldcontain">
					<span id="tipoGAR-label" class="property-label"><g:message code="GAR.tipoGAR.label" default="Tipo GAR" /></span>
					
						<span class="property-value" aria-labelledby="tipoGAR-label"><g:fieldValue bean="${GARInstance}" field="tipoGAR"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:GARInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${GARInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
