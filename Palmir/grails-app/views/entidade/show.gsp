
<%@ page import="palmir.Entidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entidade.label', default: 'Entidade')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-entidade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-entidade" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list entidade">
			
				<g:if test="${entidadeInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="entidade.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${entidadeInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.morada}">
				<li class="fieldcontain">
					<span id="morada-label" class="property-label"><g:message code="entidade.morada.label" default="Morada" /></span>
					
						<span class="property-value" aria-labelledby="morada-label"><g:fieldValue bean="${entidadeInstance}" field="morada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.NIF}">
				<li class="fieldcontain">
					<span id="NIF-label" class="property-label"><g:message code="entidade.NIF.label" default="NIF" /></span>
					
						<span class="property-value" aria-labelledby="NIF-label"><g:fieldValue bean="${entidadeInstance}" field="NIF"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="entidade.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${entidadeInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="entidade.codigoPostal.label" default="Codigo Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${entidadeInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.localidade}">
				<li class="fieldcontain">
					<span id="localidade-label" class="property-label"><g:message code="entidade.localidade.label" default="Localidade" /></span>
					
						<span class="property-value" aria-labelledby="localidade-label"><g:fieldValue bean="${entidadeInstance}" field="localidade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:entidadeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${entidadeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
