<%@ page import="palmir.ServicoNoProdutor" %>



<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'gar', 'error')} required">
	<label for="gar">
		<g:message code="servicoNoProdutor.gar.label" default="Gar" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gar" name="gar.id" from="${palmir.GAR.list()}" optionKey="id" required="" value="${servicoNoProdutorInstance?.gar?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'residuo', 'error')} ">
	<label for="residuo">
		<g:message code="servicoNoProdutor.residuo.label" default="Residuo" />
		
	</label>
	<g:select id="residuo" name="residuo.id" from="${palmir.Residuo.list()}" optionKey="id" value="${servicoNoProdutorInstance?.residuo?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'carga', 'error')} ">
	<label for="carga">
		<g:message code="servicoNoProdutor.carga.label" default="Carga" />
		
	</label>
	<g:select id="carga" name="carga.id" from="${palmir.Carga.list()}" optionKey="id" value="${servicoNoProdutorInstance?.carga?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'assinaturaCliente', 'error')} required">
	<label for="assinaturaCliente">
		<g:message code="servicoNoProdutor.assinaturaCliente.label" default="Assinatura Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assinaturaCliente" required="" value="${servicoNoProdutorInstance?.assinaturaCliente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'idProdutor', 'error')} required">
	<label for="idProdutor">
		<g:message code="servicoNoProdutor.idProdutor.label" default="Id Produtor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="idProdutor" name="idProdutor.id" from="${palmir.Produtor.list()}" optionKey="id" required="" value="${servicoNoProdutorInstance?.idProdutor?.id}" class="many-to-one"/>

</div>

