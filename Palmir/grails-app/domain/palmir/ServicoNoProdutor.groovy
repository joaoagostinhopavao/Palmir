package palmir

class ServicoNoProdutor {
	String assinaturaCliente
	Produtor idProdutor
	
	static hasOne=[residuo:Residuo, carga:Carga]
	static belongsTo=[gar:GAR]

    static constraints = {
		gar()
		residuo(nullable:true)
		carga(nullable:true)
		
		assinaturaCliente()
    }
	
	String toString(){
		"Transporte de "+"${residuo}"+"para"+"${idProdutor}"
	}
}
