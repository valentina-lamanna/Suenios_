import Suenio.*
class Persona {
	var edad
	var property plataAGanar
	var sueniosACumplir =[]
	var sueniosCumplidos =[]
	var carrerasQueQuieroEstudiar=[]
	var carrerasQueSeRecibio=[]
	var property cantidadHijos
	 
	// lugares,
	
	
	method cumplirSuenio(suenio){
		if(suenio.puedeSerCumplido(self)){
			sueniosACumplir.delete(suenio)
			sueniosCumplidos.add(suenio)
		}else{
			throw new Exception(message= "NO se pudo cumplir el suenio")
		}
	}

	method quiereSeguir(carrera){
		return carrerasQueQuieroEstudiar.contains(carrera)
	}
	
	method seRecibio(carrera){
		return carrerasQueSeRecibio.contains(carrera)
	}
	
     method cumplirSuenioMultiple(suenio){
     	suenio.puedenSerCumplidos(self)
     }
}


class Alocado inherits Persona{
	method suenioMasImportante(){
		return sueniosACumplir.max({suenio=> suenio.felicidad()})
	}
	
	method cumplirSuenioMasPreciado(){
		const suenioMasImportante = self.suenioMasImportante()
		self.cumplirSuenio(suenioMasImportante)
	}
}
class Obsesivo inherits Persona{
	method cumplirSuenioMasPreciado(){
		const primerSuenio = sueniosACumplir.first()
 		self.cumplirSuenio(primerSuenio)
	}
}
class Realista inherits Persona{
	method cumplirSuenioMasPreciado(){
		const suenioAlAzar = sueniosACumplir.anyOne()
		self.cumplirSuenio(suenioAlAzar)
	}
}
