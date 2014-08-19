package palmir

class Entidade {
	String nome
	String morada
	String NIF
	String codigo
	String codigoPostal
	String localidade

    static constraints = {
		nome()
		morada (nullable:true)
		NIF (nullable:true)
		codigo (nullable:true)
		codigoPostal (nullable:true)
		localidade (nullable:true)
		
		
    }
}
