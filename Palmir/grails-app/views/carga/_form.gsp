<%@ page import="palmir.Carga" %>



<div class="fieldcontain ${hasErrors(bean: cargaInstance, field: 'dataPrevista', 'error')} required">
	<label for="dataPrevista">
		<g:message code="carga.dataPrevista.label" default="Data Prevista" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dataPrevista" required="" value="${cargaInstance?.dataPrevista}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cargaInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="carga.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="data" required="" value="${cargaInstance?.data}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cargaInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="carga.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hora" required="" value="${cargaInstance?.hora}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cargaInstance, field: 'servico', 'error')} required">
	<label for="servico">
		<g:message code="carga.servico.label" default="Servico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servico" name="servico.id" from="${palmir.ServicoNoProdutor.list()}" optionKey="id" required="" value="${cargaInstance?.servico?.id}" class="many-to-one"/>

</div>

