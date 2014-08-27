
<%@ page import="palmir.ServicoNoProdutor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servicoNoProdutor.label', default: 'ServicoNoProdutor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-servicoNoProdutor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-servicoNoProdutor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="servicoNoProdutor.gar.label" default="Gar" /></th>
					
						<th><g:message code="servicoNoProdutor.residuo.label" default="Residuo" /></th>
					
						<th><g:message code="servicoNoProdutor.carga.label" default="Carga" /></th>
					
						<g:sortableColumn property="assinaturaCliente" title="${message(code: 'servicoNoProdutor.assinaturaCliente.label', default: 'Assinatura Cliente')}" />
					
						<th><g:message code="servicoNoProdutor.identProdutor.label" default="Ident Produtor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${servicoNoProdutorInstanceList}" status="i" var="servicoNoProdutorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${servicoNoProdutorInstance.id}">${fieldValue(bean: servicoNoProdutorInstance, field: "gar")}</g:link></td>
					
						<td>${fieldValue(bean: servicoNoProdutorInstance, field: "residuo")}</td>
					
						<td>${fieldValue(bean: servicoNoProdutorInstance, field: "carga")}</td>
					
						<td>${fieldValue(bean: servicoNoProdutorInstance, field: "assinaturaCliente")}</td>
					
						<td>${fieldValue(bean: servicoNoProdutorInstance, field: "identProdutor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${servicoNoProdutorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
