//[]
object sanMartin {
	const caballos=7
	var ejercito=#{}
	method cuantosCaballos(){
		return caballos
	}
	method tamanioEjercito(){
		return ejercito.size()
	}
	method agregarReclutas(recluta)=	ejercito.add{recluta}		
	method eliminarReclutas(recluta)=ejercito.remove(recluta)
	method cantidadDeCaballosCorrecta(){
		return	self.tamanioEjercito()+1<=caballos
	}
	method echarAtodos()=ejercito.clear()
	method ejercitoMasPoderoso(rival){
		return self.tamanioEjercito()>rival.tamanioEjercito()
	}
	method formaParte(recluta){
		return ejercito.contains(recluta)
	}
	method esTemerario(){
		return self.tamanioEjercito()>100
	}
	method atacar(rival,soldado){
		if(self.formaParte(soldado)){
			soldado.poder()*7
		}else return 0
		
	}
}


object cabral{
	
}

object luisBeltran{
	
}

object remediosDeEscalada{
	const esposo=sanMartin
	
}

 object general_realista{
 	var cantidadDeTropas=100
 	const coeficienteDePoder=25
 	var poderio=cantidadDeTropas*coeficienteDePoder
 	method tamanioEjercito(){return cantidadDeTropas}
 	method tieneMiedo(rival){return (rival.esTemerario()||sanMartin.tamanioEjercito()==0)}
 	
 	
 }
