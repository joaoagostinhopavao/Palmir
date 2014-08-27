package palmir

/* Um residuoProduzido só pode ter uma classificação. Não se pode
 * classificar um residuo com n códigos LER.
 * No entanto a mesma classificação serve para classificar
 * n residuos produzidos por diferentes produtores. Por exemplo 010101
 * pode aplicar-se ao residuo produzido no restaurante A e no restaurante B
 * Assim, a relação entre o residuoProduzido e a sua classificação é de 1-*
 * Significa usar no lado do possuidor a injeção da classificação e do lado 
 * da classificação usar o atributo estático definido por 'belongsTo', apontando
 * para o residuoProduzido.
 */
class ResiduoProduzido {
	String observacoes
	Float quantidade
	Boolean amostra
	String nrAmostra
	byte[] codigoBarras
	ClassificacaoResiduo classificacao
	ServicoNoProdutor servico
	
	

    static constraints = {
		servico nullable:true
		classificacao()
		codigoBarras nullable:true, maxSize:10000000
		quantidade()
		amostra()
		nrAmostra()
		observacoes()
		
		
    }
}
