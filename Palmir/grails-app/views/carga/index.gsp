
<%@ page import="palmir.Carga" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carga.label', default: 'Carga')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-carga" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-carga" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="carga.servico.label" default="Servico" /></th>
					
						<g:sortableColumn property="dataPrevista" title="${message(code: 'carga.dataPrevista.label', default: 'Data Prevista')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'carga.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'carga.hora.label', default: 'Hora')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cargaInstanceList}" status="i" var="cargaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cargaInstance.id}">${fieldValue(bean: cargaInstance, field: "servico")}</g:link></td>
					
						<td>${fieldValue(bean: cargaInstance, field: "dataPrevista")}</td>
					
						<td>${fieldValue(bean: cargaInstance, field: "data")}</td>
					
						<td>${fieldValue(bean: cargaInstance, field: "hora")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cargaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
