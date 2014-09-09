package palmir

class ClassificacaoResiduo {
	String capitulo
	String subCapitulo
	String codigo
	String descricao
	String unidadeDeMedida
	
	
	
	static belongsTo=[residuo:ResiduoProduzido]

    static constraints = {
		capitulo()
		subCapitulo()
		codigo()
		descricao(maxSize:200)
		unidadeDeMedida inList:["gramas","kilos","toneladas","centilitros","litros","Klitros"]
		residuo nullable:true
    }
	
	String toString(){
		"${capitulo}"+"${subCapitulo}"+"${codigo}"+" ("+"${descricao}"+")"
	}
}
