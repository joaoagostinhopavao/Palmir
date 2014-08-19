<%@ page import="palmir.GAR" %>



<div class="fieldcontain ${hasErrors(bean: GARInstance, field: 'servicoCliente', 'error')} ">
	<label for="servicoCliente">
		<g:message code="GAR.servicoCliente.label" default="Servico Cliente" />
		
	</label>
	<g:select id="servicoCliente" name="servicoCliente.id" from="${palmir.ServicoNoProdutor.list()}" optionKey="id" value="${GARInstance?.servicoCliente?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GARInstance, field: 'numeroGAR', 'error')} required">
	<label for="numeroGAR">
		<g:message code="GAR.numeroGAR.label" default="Numero GAR" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroGAR" required="" value="${GARInstance?.numeroGAR}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GARInstance, field: 'tipoGAR', 'error')} required">
	<label for="tipoGAR">
		<g:message code="GAR.tipoGAR.label" default="Tipo GAR" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoGAR" required="" value="${GARInstance?.tipoGAR}"/>

</div>

