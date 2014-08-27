
<%@ page import="palmir.Carga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carga.label', default: 'Carga')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-carga" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-carga" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list carga">
			
				<g:if test="${cargaInstance?.servico}">
				<li class="fieldcontain">
					<span id="servico-label" class="property-label"><g:message code="carga.servico.label" default="Servico" /></span>
					
						<span class="property-value" aria-labelledby="servico-label"><g:link controller="servicoNoProdutor" action="show" id="${cargaInstance?.servico?.id}">${cargaInstance?.servico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargaInstance?.dataPrevista}">
				<li class="fieldcontain">
					<span id="dataPrevista-label" class="property-label"><g:message code="carga.dataPrevista.label" default="Data Prevista" /></span>
					
						<span class="property-value" aria-labelledby="dataPrevista-label"><g:fieldValue bean="${cargaInstance}" field="dataPrevista"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargaInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="carga.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:fieldValue bean="${cargaInstance}" field="data"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargaInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="carga.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${cargaInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cargaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cargaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
