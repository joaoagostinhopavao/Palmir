
<%@ page import="palmir.GAR" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'GAR.label', default: 'GAR')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-GAR" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-GAR" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="GAR.servicoCliente.label" default="Servico Cliente" /></th>
					
						<g:sortableColumn property="numeroGAR" title="${message(code: 'GAR.numeroGAR.label', default: 'Numero GAR')}" />
					
						<g:sortableColumn property="tipoGAR" title="${message(code: 'GAR.tipoGAR.label', default: 'Tipo GAR')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${GARInstanceList}" status="i" var="GARInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${GARInstance.id}">${fieldValue(bean: GARInstance, field: "servicoCliente")}</g:link></td>
					
						<td>${fieldValue(bean: GARInstance, field: "numeroGAR")}</td>
					
						<td>${fieldValue(bean: GARInstance, field: "tipoGAR")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${GARInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
