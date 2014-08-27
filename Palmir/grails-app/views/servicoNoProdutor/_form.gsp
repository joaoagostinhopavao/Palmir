<%@ page import="palmir.ServicoNoProdutor" %>



<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'gar', 'error')} required">
	<label for="gar">
		<g:message code="servicoNoProdutor.gar.label" default="Gar" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gar" name="gar.id" from="${palmir.GAR.list()}" optionKey="id" required="" value="${servicoNoProdutorInstance?.gar?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'residuo', 'error')} required">
	<label for="residuo">
		<g:message code="servicoNoProdutor.residuo.label" default="Residuo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="residuo" name="residuo.id" from="${palmir.ResiduoProduzido.list()}" optionKey="id" required="" value="${servicoNoProdutorInstance?.residuo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'carga', 'error')} required">
	<label for="carga">
		<g:message code="servicoNoProdutor.carga.label" default="Carga" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="carga" name="carga.id" from="${palmir.Carga.list()}" optionKey="id" required="" value="${servicoNoProdutorInstance?.carga?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'assinaturaCliente', 'error')} required">
	<label for="assinaturaCliente">
		<g:message code="servicoNoProdutor.assinaturaCliente.label" default="Assinatura Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assinaturaCliente" required="" value="${servicoNoProdutorInstance?.assinaturaCliente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoNoProdutorInstance, field: 'identProdutor', 'error')} required">
	<label for="identProdutor">
		<g:message code="servicoNoProdutor.identProdutor.label" default="Ident Produtor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="identProdutor" name="identProdutor.id" from="${palmir.Produtor.list()}" optionKey="id" required="" value="${servicoNoProdutorInstance?.identProdutor?.id}" class="many-to-one"/>

</div>

