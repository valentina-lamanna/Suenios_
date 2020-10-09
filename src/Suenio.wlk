import Persona.*
class SuenioMultimple{
	const losTresSuenios=[]
	 method puedenSerCumplidos(persona){
	 	if( !self.validar(persona)){
	 		throw new Exception(message= "NO se pudo cumplir alguno de los suenios")
	 	}else{return true}
	 	
	 }
	method validar(persona){
		return losTresSuenios.all({suenio => suenio.puedeSerCumplido(persona)})
	}
}

class Suenio {
	var felicidad
	method felicidad(){
		return felicidad
	}
}

class RecibirseDeCarrera inherits Suenio {
	 method puedeSerCumplido(persona){
	 	return persona.quiereSeguir(self) && !persona.seRecibio(self)
	 }
}

class TenerXHijos inherits Suenio {
	method puedeSerCumplido(persona){
		return true
	}
}
class AdoptarXhijos inherits Suenio {
	method puedeSerCumplido(persona){
		return persona.cantidadHijos() == 0
	}
}
class ViajarA inherits Suenio {
	method puedeSerCumplido(persona){
		return true
	}
}
class ConseguirTrabajo inherits Suenio {
	var plata
	method puedeSerCumplido(persona){
		return  plata > persona.plataAGanar()
	}
}