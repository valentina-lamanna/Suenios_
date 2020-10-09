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
