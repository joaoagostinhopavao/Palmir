
<%@ page import="palmir.ResiduoProduzido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'residuoProduzido.label', default: 'ResiduoProduzido')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-residuoProduzido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-residuoProduzido" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list residuoProduzido">
			
				<g:if test="${residuoProduzidoInstance?.servico}">
				<li class="fieldcontain">
					<span id="servico-label" class="property-label"><g:message code="residuoProduzido.servico.label" default="Servico" /></span>
					
						<span class="property-value" aria-labelledby="servico-label"><g:link controller="servicoNoProdutor" action="show" id="${residuoProduzidoInstance?.servico?.id}">${residuoProduzidoInstance?.servico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoProduzidoInstance?.classificacao}">
				<li class="fieldcontain">
					<span id="classificacao-label" class="property-label"><g:message code="residuoProduzido.classificacao.label" default="Classificacao" /></span>
					
						<span class="property-value" aria-labelledby="classificacao-label"><g:link controller="classificacaoResiduo" action="show" id="${residuoProduzidoInstance?.classificacao?.id}">${residuoProduzidoInstance?.classificacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoProduzidoInstance?.codigoBarras}">
				<li class="fieldcontain">
					<span id="codigoBarras-label" class="property-label"><g:message code="residuoProduzido.codigoBarras.label" default="Codigo Barras" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoProduzidoInstance?.quantidade}">
				<li class="fieldcontain">
					<span id="quantidade-label" class="property-label"><g:message code="residuoProduzido.quantidade.label" default="Quantidade" /></span>
					
						<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue bean="${residuoProduzidoInstance}" field="quantidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoProduzidoInstance?.amostra}">
				<li class="fieldcontain">
					<span id="amostra-label" class="property-label"><g:message code="residuoProduzido.amostra.label" default="Amostra" /></span>
					
						<span class="property-value" aria-labelledby="amostra-label"><g:formatBoolean boolean="${residuoProduzidoInstance?.amostra}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoProduzidoInstance?.nrAmostra}">
				<li class="fieldcontain">
					<span id="nrAmostra-label" class="property-label"><g:message code="residuoProduzido.nrAmostra.label" default="Nr Amostra" /></span>
					
						<span class="property-value" aria-labelledby="nrAmostra-label"><g:fieldValue bean="${residuoProduzidoInstance}" field="nrAmostra"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoProduzidoInstance?.observacoes}">
				<li class="fieldcontain">
					<span id="observacoes-label" class="property-label"><g:message code="residuoProduzido.observacoes.label" default="Observacoes" /></span>
					
						<span class="property-value" aria-labelledby="observacoes-label"><g:fieldValue bean="${residuoProduzidoInstance}" field="observacoes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:residuoProduzidoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${residuoProduzidoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
