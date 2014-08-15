<%@ page import="palmir.Residuo" %>



<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="residuo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${residuoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="residuo.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${residuoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'tr', 'error')} required">
	<label for="tr">
		<g:message code="residuo.tr.label" default="Tr" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tr" name="tr.id" from="${palmir.TipoResiduo.list()}" optionKey="id" required="" value="${residuoInstance?.tr?.id}" class="many-to-one"/>

</div>

