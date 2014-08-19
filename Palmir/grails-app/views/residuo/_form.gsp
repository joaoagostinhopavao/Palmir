<%@ page import="palmir.Residuo" %>



<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'codigoLER', 'error')} required">
	<label for="codigoLER">
		<g:message code="residuo.codigoLER.label" default="Codigo LER" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoLER" required="" value="${residuoInstance?.codigoLER}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="residuo.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${residuoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="residuo.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" value="${fieldValue(bean: residuoInstance, field: 'quantidade')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'unidadeDeMedida', 'error')} required">
	<label for="unidadeDeMedida">
		<g:message code="residuo.unidadeDeMedida.label" default="Unidade De Medida" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="unidadeDeMedida" from="${residuoInstance.constraints.unidadeDeMedida.inList}" required="" value="${residuoInstance?.unidadeDeMedida}" valueMessagePrefix="residuo.unidadeDeMedida"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'amostra', 'error')} ">
	<label for="amostra">
		<g:message code="residuo.amostra.label" default="Amostra" />
		
	</label>
	<g:checkBox name="amostra" value="${residuoInstance?.amostra}" />

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'nIdAmostra', 'error')} required">
	<label for="nIdAmostra">
		<g:message code="residuo.nIdAmostra.label" default="N Id Amostra" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nIdAmostra" required="" value="${residuoInstance?.nIdAmostra}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'servico', 'error')} required">
	<label for="servico">
		<g:message code="residuo.servico.label" default="Servico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servico" name="servico.id" from="${palmir.ServicoNoProdutor.list()}" optionKey="id" required="" value="${residuoInstance?.servico?.id}" class="many-to-one"/>

</div>

