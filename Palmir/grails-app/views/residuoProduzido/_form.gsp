<%@ page import="palmir.ResiduoProduzido" %>



<div class="fieldcontain ${hasErrors(bean: residuoProduzidoInstance, field: 'servico', 'error')} ">
	<label for="servico">
		<g:message code="residuoProduzido.servico.label" default="Servico" />
		
	</label>
	<g:select id="servico" name="servico.id" from="${palmir.ServicoNoProdutor.list()}" optionKey="id" value="${residuoProduzidoInstance?.servico?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoProduzidoInstance, field: 'classificacao', 'error')} required">
	<label for="classificacao">
		<g:message code="residuoProduzido.classificacao.label" default="Classificacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classificacao" name="classificacao.id" from="${palmir.ClassificacaoResiduo.list()}" optionKey="id" required="" value="${residuoProduzidoInstance?.classificacao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoProduzidoInstance, field: 'codigoBarras', 'error')} ">
	<label for="codigoBarras">
		<g:message code="residuoProduzido.codigoBarras.label" default="Codigo Barras" />
		
	</label>
	<input type="file" id="codigoBarras" name="codigoBarras" />

</div>

<div class="fieldcontain ${hasErrors(bean: residuoProduzidoInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="residuoProduzido.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" value="${fieldValue(bean: residuoProduzidoInstance, field: 'quantidade')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoProduzidoInstance, field: 'amostra', 'error')} ">
	<label for="amostra">
		<g:message code="residuoProduzido.amostra.label" default="Amostra" />
		
	</label>
	<g:checkBox name="amostra" value="${residuoProduzidoInstance?.amostra}" />

</div>

<div class="fieldcontain ${hasErrors(bean: residuoProduzidoInstance, field: 'nrAmostra', 'error')} required">
	<label for="nrAmostra">
		<g:message code="residuoProduzido.nrAmostra.label" default="Nr Amostra" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nrAmostra" required="" value="${residuoProduzidoInstance?.nrAmostra}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoProduzidoInstance, field: 'observacoes', 'error')} required">
	<label for="observacoes">
		<g:message code="residuoProduzido.observacoes.label" default="Observacoes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacoes" required="" value="${residuoProduzidoInstance?.observacoes}"/>

</div>

