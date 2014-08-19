package palmir

class Carga {
	
	String dataPrevista
	String data
	String hora
	
	static belongsTo=[servico:ServicoNoProdutor]

    static constraints = {
		dataPrevista()
		data()
		hora()
    }
	
	String toString(){
			"${data}"
	}
}
