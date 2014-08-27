
<%@ page import="palmir.ResiduoProduzido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'residuoProduzido.label', default: 'ResiduoProduzido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-residuoProduzido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-residuoProduzido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="residuoProduzido.servico.label" default="Servico" /></th>
					
						<th><g:message code="residuoProduzido.classificacao.label" default="Classificacao" /></th>
					
						<g:sortableColumn property="codigoBarras" title="${message(code: 'residuoProduzido.codigoBarras.label', default: 'Codigo Barras')}" />
					
						<g:sortableColumn property="quantidade" title="${message(code: 'residuoProduzido.quantidade.label', default: 'Quantidade')}" />
					
						<g:sortableColumn property="amostra" title="${message(code: 'residuoProduzido.amostra.label', default: 'Amostra')}" />
					
						<g:sortableColumn property="nrAmostra" title="${message(code: 'residuoProduzido.nrAmostra.label', default: 'Nr Amostra')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${residuoProduzidoInstanceList}" status="i" var="residuoProduzidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${residuoProduzidoInstance.id}">${fieldValue(bean: residuoProduzidoInstance, field: "servico")}</g:link></td>
					
						<td>${fieldValue(bean: residuoProduzidoInstance, field: "classificacao")}</td>
					
						<td>${fieldValue(bean: residuoProduzidoInstance, field: "codigoBarras")}</td>
					
						<td>${fieldValue(bean: residuoProduzidoInstance, field: "quantidade")}</td>
					
						<td><g:formatBoolean boolean="${residuoProduzidoInstance.amostra}" /></td>
					
						<td>${fieldValue(bean: residuoProduzidoInstance, field: "nrAmostra")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${residuoProduzidoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
