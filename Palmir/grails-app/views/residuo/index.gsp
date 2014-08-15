
<%@ page import="palmir.Residuo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'residuo.label', default: 'Residuo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-residuo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-residuo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'residuo.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'residuo.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="residuo.tr.label" default="Tr" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${residuoInstanceList}" status="i" var="residuoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${residuoInstance.id}">${fieldValue(bean: residuoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: residuoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: residuoInstance, field: "tr")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${residuoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
