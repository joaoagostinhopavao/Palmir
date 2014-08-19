<%@ page import="palmir.Produtor" %>



<div class="fieldcontain ${hasErrors(bean: produtorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="produtor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${produtorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtorInstance, field: 'morada', 'error')} ">
	<label for="morada">
		<g:message code="produtor.morada.label" default="Morada" />
		
	</label>
	<g:textField name="morada" value="${produtorInstance?.morada}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtorInstance, field: 'NIF', 'error')} ">
	<label for="NIF">
		<g:message code="produtor.NIF.label" default="NIF" />
		
	</label>
	<g:textField name="NIF" value="${produtorInstance?.NIF}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtorInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="produtor.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${produtorInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtorInstance, field: 'codigoPostal', 'error')} ">
	<label for="codigoPostal">
		<g:message code="produtor.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:textField name="codigoPostal" value="${produtorInstance?.codigoPostal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtorInstance, field: 'localidade', 'error')} ">
	<label for="localidade">
		<g:message code="produtor.localidade.label" default="Localidade" />
		
	</label>
	<g:textField name="localidade" value="${produtorInstance?.localidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: produtorInstance, field: 'idP', 'error')} required">
	<label for="idP">
		<g:message code="produtor.idP.label" default="Id P" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idP" required="" value="${produtorInstance?.idP}"/>

</div>

