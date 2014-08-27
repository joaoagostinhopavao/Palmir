<%@ page import="palmir.ClassificacaoResiduo" %>



<div class="fieldcontain ${hasErrors(bean: classificacaoResiduoInstance, field: 'residuo', 'error')} ">
	<label for="residuo">
		<g:message code="classificacaoResiduo.residuo.label" default="Residuo" />
		
	</label>
	<g:select id="residuo" name="residuo.id" from="${palmir.ResiduoProduzido.list()}" optionKey="id" value="${classificacaoResiduoInstance?.residuo?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: classificacaoResiduoInstance, field: 'capitulo', 'error')} required">
	<label for="capitulo">
		<g:message code="classificacaoResiduo.capitulo.label" default="Capitulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="capitulo" required="" value="${classificacaoResiduoInstance?.capitulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: classificacaoResiduoInstance, field: 'subCapitulo', 'error')} required">
	<label for="subCapitulo">
		<g:message code="classificacaoResiduo.subCapitulo.label" default="Sub Capitulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subCapitulo" required="" value="${classificacaoResiduoInstance?.subCapitulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: classificacaoResiduoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="classificacaoResiduo.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigo" required="" value="${classificacaoResiduoInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: classificacaoResiduoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="classificacaoResiduo.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="200" required="" value="${classificacaoResiduoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: classificacaoResiduoInstance, field: 'unidadeDeMedida', 'error')} required">
	<label for="unidadeDeMedida">
		<g:message code="classificacaoResiduo.unidadeDeMedida.label" default="Unidade De Medida" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="unidadeDeMedida" from="${classificacaoResiduoInstance.constraints.unidadeDeMedida.inList}" required="" value="${classificacaoResiduoInstance?.unidadeDeMedida}" valueMessagePrefix="classificacaoResiduo.unidadeDeMedida"/>

</div>

