
<%@ page import="palmir.ClassificacaoResiduo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'classificacaoResiduo.label', default: 'ClassificacaoResiduo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-classificacaoResiduo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-classificacaoResiduo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="capitulo" title="${message(code: 'classificacaoResiduo.capitulo.label', default: 'Capitulo')}" />
					
						<g:sortableColumn property="subCapitulo" title="${message(code: 'classificacaoResiduo.subCapitulo.label', default: 'Sub Capitulo')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'classificacaoResiduo.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'classificacaoResiduo.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="unidadeDeMedida" title="${message(code: 'classificacaoResiduo.unidadeDeMedida.label', default: 'Unidade De Medida')}" />
					
						<th></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${classificacaoResiduoInstanceList}" status="i" var="classificacaoResiduoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${classificacaoResiduoInstance.id}">${fieldValue(bean: classificacaoResiduoInstance, field: "capitulo")}</g:link></td>
					
						<td>${fieldValue(bean: classificacaoResiduoInstance, field: "subCapitulo")}</td>
					
						<td>${fieldValue(bean: classificacaoResiduoInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: classificacaoResiduoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: classificacaoResiduoInstance, field: "unidadeDeMedida")}</td>
					
						<td></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${classificacaoResiduoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
