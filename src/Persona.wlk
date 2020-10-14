import Suenio.*
class Persona {
	var property felicidad
	var edad
	var property plataAGanar
	var sueniosACumplir =[]
	var sueniosCumplidos =[]
	var carrerasQueQuieroEstudiar=[]
	var carrerasQueSeRecibio=[]
	var property cantidadHijos
	 
	// lugares,
	
	//1
	method cumplirSuenio(suenio){
		if(suenio.puedeSerCumplido(self)){
			sueniosACumplir.delete(suenio)
			sueniosCumplidos.add(suenio)
			felicidad = felicidad + suenio.felicidad()
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
	//2
     method cumplirSuenioMultiple(suenio){
     	suenio.puedenSerCumplidos(self)
     }
  //4   
     method esFeliz(){
     	return felicidad > self.sumaDeFelicidad(sueniosACumplir) 
 
     }
     
     method sumaDeFelicidad(listaDeSuenios){
     	return listaDeSuenios.map({suenio => suenio.felicidad()}).sum()
     }
     
     //5
     method esAmbiciosa(){
     	return  self.sumaDeFelicidad(sueniosACumplir) > 100 || self.sumaDeFelicidad(sueniosCumplidos)  >100
     }
}

//3
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




// casos de prueba
// const valen= new Persona( felicidad = 20 , edad=19,plataAGanar = 120, sueniosACumplir=[suenio1,suenio2],sueniosCumplidos=[], carrerasQueQuieroEstudiar=[], carrerasQueSeRecibio=[], cantidadHijos=1)
// const suenio1= new TenerXHijos( felicidad = 11)
// const suenio2 = new ViajarA(felicidad = 10)