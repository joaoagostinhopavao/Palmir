package palmir

class ClassificacaoResiduo {
	String capitulo
	String subCapitulo
	String codigo
	String descricao
	String unidadeDeMedida
	
	
	
	static belongsTo=[residuo:ResiduoProduzido]

    static constraints = {
		residuo nullable:true
		capitulo()
		subCapitulo()
		codigo()
		descricao(maxSize:200)
		unidadeDeMedida inList:["gramas","kilos","toneladas","centilitros","litros","Klitros"]
    }
	
	String toString(){
		"${capitulo}"+"${subCapitulo}"+"${codigo}"+" ("+"${descricao}"+")"
	}
}
