package palmir

class ServicoNoProdutor {
	String assinaturaCliente
	Produtor identProdutor
	
	
	static hasOne=[residuo:ResiduoProduzido,carga:Carga]
	static belongsTo=[gar:GAR]

    static constraints = {
		gar()
		residuo unique:true, nullable:true
		carga unique:true,nullable:true
		
		assinaturaCliente()
    }
	
	String toString(){
		"Transporte de "+"${residuo}"+"para"+"${identProdutor}"
	}
}
