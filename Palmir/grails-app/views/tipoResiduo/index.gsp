
<%@ page import="palmir.TipoResiduo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoResiduo.label', default: 'TipoResiduo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tipoResiduo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tipoResiduo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'tipoResiduo.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="codigoLer" title="${message(code: 'tipoResiduo.codigoLer.label', default: 'Codigo Ler')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tipoResiduoInstanceList}" status="i" var="tipoResiduoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tipoResiduoInstance.id}">${fieldValue(bean: tipoResiduoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: tipoResiduoInstance, field: "codigoLer")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tipoResiduoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
