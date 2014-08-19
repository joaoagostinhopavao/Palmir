
<%@ page import="palmir.ServicoNoProdutor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servicoNoProdutor.label', default: 'ServicoNoProdutor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-servicoNoProdutor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-servicoNoProdutor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list servicoNoProdutor">
			
				<g:if test="${servicoNoProdutorInstance?.gar}">
				<li class="fieldcontain">
					<span id="gar-label" class="property-label"><g:message code="servicoNoProdutor.gar.label" default="Gar" /></span>
					
						<span class="property-value" aria-labelledby="gar-label"><g:link controller="GAR" action="show" id="${servicoNoProdutorInstance?.gar?.id}">${servicoNoProdutorInstance?.gar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoNoProdutorInstance?.residuo}">
				<li class="fieldcontain">
					<span id="residuo-label" class="property-label"><g:message code="servicoNoProdutor.residuo.label" default="Residuo" /></span>
					
						<span class="property-value" aria-labelledby="residuo-label"><g:link controller="residuo" action="show" id="${servicoNoProdutorInstance?.residuo?.id}">${servicoNoProdutorInstance?.residuo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoNoProdutorInstance?.carga}">
				<li class="fieldcontain">
					<span id="carga-label" class="property-label"><g:message code="servicoNoProdutor.carga.label" default="Carga" /></span>
					
						<span class="property-value" aria-labelledby="carga-label"><g:link controller="carga" action="show" id="${servicoNoProdutorInstance?.carga?.id}">${servicoNoProdutorInstance?.carga?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoNoProdutorInstance?.assinaturaCliente}">
				<li class="fieldcontain">
					<span id="assinaturaCliente-label" class="property-label"><g:message code="servicoNoProdutor.assinaturaCliente.label" default="Assinatura Cliente" /></span>
					
						<span class="property-value" aria-labelledby="assinaturaCliente-label"><g:fieldValue bean="${servicoNoProdutorInstance}" field="assinaturaCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoNoProdutorInstance?.idProdutor}">
				<li class="fieldcontain">
					<span id="idProdutor-label" class="property-label"><g:message code="servicoNoProdutor.idProdutor.label" default="Id Produtor" /></span>
					
						<span class="property-value" aria-labelledby="idProdutor-label"><g:link controller="produtor" action="show" id="${servicoNoProdutorInstance?.idProdutor?.id}">${servicoNoProdutorInstance?.idProdutor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:servicoNoProdutorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${servicoNoProdutorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
