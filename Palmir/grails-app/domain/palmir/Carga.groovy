package palmir

class Carga {
	
	String dataPrevista
	String data
	String hora
	ServicoNoProdutor servico


    static constraints = {
		servico nullable:true
		dataPrevista()
		data()
		hora()
    }
	
	String toString(){
			"${data}"
	}
}
