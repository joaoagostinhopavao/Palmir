<%@ page import="palmir.GAR" %>



<div class="fieldcontain ${hasErrors(bean: GARInstance, field: 'numeroGAR', 'error')} required">
	<label for="numeroGAR">
		<g:message code="GAR.numeroGAR.label" default="Numero GAR" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroGAR" value="${fieldValue(bean: GARInstance, field: 'numeroGAR')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: GARInstance, field: 'tipoGAR', 'error')} ">
	<label for="tipoGAR">
		<g:message code="GAR.tipoGAR.label" default="Tipo GAR" />
		
	</label>
	<g:textField name="tipoGAR" value="${fieldValue(bean: GARInstance, field: 'tipoGAR')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: GARInstance, field: 'servicoCliente', 'error')} ">
	<label for="servicoCliente">
		<g:message code="GAR.servicoCliente.label" default="Servico Cliente" />
		
	</label>
	<g:select name="servicoCliente.id" from="${palmir.ServicoNoProdutor.list()}" optionKey="id" value="${GARInstance?.servicoCliente?.id}" noSelection="['null': '']" />

</div>

