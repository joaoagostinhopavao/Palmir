package palmir

class TipoResiduo {
	String nome
	String codigoLer

    static constraints = {
		nome nullable:false
		codigoLer nullable:false
    }
	
	String toString(){
		codigoLer +" - "+nome
	}
}
