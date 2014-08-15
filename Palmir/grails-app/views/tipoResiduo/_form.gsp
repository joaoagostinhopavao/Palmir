<%@ page import="palmir.TipoResiduo" %>



<div class="fieldcontain ${hasErrors(bean: tipoResiduoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tipoResiduo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${tipoResiduoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tipoResiduoInstance, field: 'codigoLer', 'error')} required">
	<label for="codigoLer">
		<g:message code="tipoResiduo.codigoLer.label" default="Codigo Ler" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoLer" required="" value="${tipoResiduoInstance?.codigoLer}"/>

</div>

