
<%@ page import="palmir.Produtor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produtor.label', default: 'Produtor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-produtor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-produtor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'produtor.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="morada" title="${message(code: 'produtor.morada.label', default: 'Morada')}" />
					
						<g:sortableColumn property="NIF" title="${message(code: 'produtor.NIF.label', default: 'NIF')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'produtor.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="codigoPostal" title="${message(code: 'produtor.codigoPostal.label', default: 'Codigo Postal')}" />
					
						<g:sortableColumn property="localidade" title="${message(code: 'produtor.localidade.label', default: 'Localidade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${produtorInstanceList}" status="i" var="produtorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${produtorInstance.id}">${fieldValue(bean: produtorInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: produtorInstance, field: "morada")}</td>
					
						<td>${fieldValue(bean: produtorInstance, field: "NIF")}</td>
					
						<td>${fieldValue(bean: produtorInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: produtorInstance, field: "codigoPostal")}</td>
					
						<td>${fieldValue(bean: produtorInstance, field: "localidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${produtorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
