<%@ page import="palmir.Entidade" %>



<div class="fieldcontain ${hasErrors(bean: entidadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="entidade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${entidadeInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadeInstance, field: 'morada', 'error')} ">
	<label for="morada">
		<g:message code="entidade.morada.label" default="Morada" />
		
	</label>
	<g:textField name="morada" value="${entidadeInstance?.morada}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadeInstance, field: 'NIF', 'error')} ">
	<label for="NIF">
		<g:message code="entidade.NIF.label" default="NIF" />
		
	</label>
	<g:textField name="NIF" value="${entidadeInstance?.NIF}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadeInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="entidade.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${entidadeInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadeInstance, field: 'codigoPostal', 'error')} ">
	<label for="codigoPostal">
		<g:message code="entidade.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:textField name="codigoPostal" value="${entidadeInstance?.codigoPostal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entidadeInstance, field: 'localidade', 'error')} ">
	<label for="localidade">
		<g:message code="entidade.localidade.label" default="Localidade" />
		
	</label>
	<g:textField name="localidade" value="${entidadeInstance?.localidade}"/>

</div>

