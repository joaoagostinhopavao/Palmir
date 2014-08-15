package palmir

class Residuo {

	String nome
	String descricao
	TipoResiduo tr
	
    static constraints = {
    	nome blank: false
		descricao nullable:true
		
		}
}
