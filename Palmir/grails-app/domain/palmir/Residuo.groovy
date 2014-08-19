package palmir

class Residuo {

	String codigoLER
	String descricao
	String unidadeDeMedida
	Float quantidade
	Boolean amostra
	String nIdAmostra
	
	static belongsTo=[servico: ServicoNoProdutor]
	
    static constraints = {
    	codigoLER blank: false
		descricao nullable:false
		quantidade()
		unidadeDeMedida inList:["gramas","kilos","toneladas","centilitros","litros","Klitros"]
		amostra()
		nIdAmostra()
		
		
		}
	
	String toString(){
		"${codigoLER}"+"-"+"${descricao}"+"("+"${quantidade}"+" "+"${unidadeDeMedida}"+")"
	}
}
