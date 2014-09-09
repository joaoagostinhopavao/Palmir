
<%@ page import="palmir.ClassificacaoResiduo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'classificacaoResiduo.label', default: 'ClassificacaoResiduo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-classificacaoResiduo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-classificacaoResiduo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list classificacaoResiduo">
			
				<g:if test="${classificacaoResiduoInstance?.capitulo}">
				<li class="fieldcontain">
					<span id="capitulo-label" class="property-label"><g:message code="classificacaoResiduo.capitulo.label" default="Capitulo" /></span>
					
						<span class="property-value" aria-labelledby="capitulo-label"><g:fieldValue bean="${classificacaoResiduoInstance}" field="capitulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classificacaoResiduoInstance?.subCapitulo}">
				<li class="fieldcontain">
					<span id="subCapitulo-label" class="property-label"><g:message code="classificacaoResiduo.subCapitulo.label" default="Sub Capitulo" /></span>
					
						<span class="property-value" aria-labelledby="subCapitulo-label"><g:fieldValue bean="${classificacaoResiduoInstance}" field="subCapitulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classificacaoResiduoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="classificacaoResiduo.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${classificacaoResiduoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classificacaoResiduoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="classificacaoResiduo.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${classificacaoResiduoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classificacaoResiduoInstance?.unidadeDeMedida}">
				<li class="fieldcontain">
					<span id="unidadeDeMedida-label" class="property-label"><g:message code="classificacaoResiduo.unidadeDeMedida.label" default="Unidade De Medida" /></span>
					
						<span class="property-value" aria-labelledby="unidadeDeMedida-label"><g:fieldValue bean="${classificacaoResiduoInstance}" field="unidadeDeMedida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${classificacaoResiduoInstance?.residuo}">
				<li class="fieldcontain">
					<span id="residuo-label" class="property-label"><g:message code="classificacaoResiduo.residuo.label" default="Residuo" /></span>
					
						<span class="property-value" aria-labelledby="residuo-label"><g:link controller="residuoProduzido" action="show" id="${classificacaoResiduoInstance?.residuo?.id}">${classificacaoResiduoInstance?.residuo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:classificacaoResiduoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${classificacaoResiduoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
