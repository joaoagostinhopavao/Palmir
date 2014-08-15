package palmir

class Residuo {

	String nome
	String descricao
	
	
    static constraints = {
    	nome blank: false
		descricao nullable:true
		
		}
}
