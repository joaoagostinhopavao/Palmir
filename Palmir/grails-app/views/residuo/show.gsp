
<%@ page import="palmir.Residuo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'residuo.label', default: 'Residuo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-residuo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-residuo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list residuo">
			
				<g:if test="${residuoInstance?.codigoLER}">
				<li class="fieldcontain">
					<span id="codigoLER-label" class="property-label"><g:message code="residuo.codigoLER.label" default="Codigo LER" /></span>
					
						<span class="property-value" aria-labelledby="codigoLER-label"><g:fieldValue bean="${residuoInstance}" field="codigoLER"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="residuo.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${residuoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.quantidade}">
				<li class="fieldcontain">
					<span id="quantidade-label" class="property-label"><g:message code="residuo.quantidade.label" default="Quantidade" /></span>
					
						<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue bean="${residuoInstance}" field="quantidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.unidadeDeMedida}">
				<li class="fieldcontain">
					<span id="unidadeDeMedida-label" class="property-label"><g:message code="residuo.unidadeDeMedida.label" default="Unidade De Medida" /></span>
					
						<span class="property-value" aria-labelledby="unidadeDeMedida-label"><g:fieldValue bean="${residuoInstance}" field="unidadeDeMedida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.amostra}">
				<li class="fieldcontain">
					<span id="amostra-label" class="property-label"><g:message code="residuo.amostra.label" default="Amostra" /></span>
					
						<span class="property-value" aria-labelledby="amostra-label"><g:formatBoolean boolean="${residuoInstance?.amostra}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.nIdAmostra}">
				<li class="fieldcontain">
					<span id="nIdAmostra-label" class="property-label"><g:message code="residuo.nIdAmostra.label" default="N Id Amostra" /></span>
					
						<span class="property-value" aria-labelledby="nIdAmostra-label"><g:fieldValue bean="${residuoInstance}" field="nIdAmostra"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.servico}">
				<li class="fieldcontain">
					<span id="servico-label" class="property-label"><g:message code="residuo.servico.label" default="Servico" /></span>
					
						<span class="property-value" aria-labelledby="servico-label"><g:link controller="servicoNoProdutor" action="show" id="${residuoInstance?.servico?.id}">${residuoInstance?.servico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:residuoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${residuoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
