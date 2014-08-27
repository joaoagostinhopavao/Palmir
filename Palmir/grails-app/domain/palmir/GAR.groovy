package palmir

class GAR {
	String numeroGAR
	String tipoGAR
	
	static hasOne=[servicoCliente:ServicoNoProdutor]

    static constraints = {
		servicoCliente(nullable:true, unique:true)
    }
}
