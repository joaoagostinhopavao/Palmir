package palmir

class GAR {
	String numeroGAR
	String tipoGAR
	
	static hasOne=[servicoCliente:ServicoNoProdutor]

    static constraints = {
		numeroGAR(nullable:false, blank:false)
		tipoGAR(nullable:true)
		servicoCliente(nullable:true, unique:true)
    }
}
