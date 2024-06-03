object messi{
	var porcentajeDePopularidad = 0.98
	var hayInflacion = false
	var precioEntrada 
	var capacidadDelEstadio
	var viaticos
	var costoAlquiler
	var capacidadDelMonumental
	var estadioListo = true
	
	method popularidad(){
		return porcentajeDePopularidad
	}
	
	method asignarCapacidadDelEstadio(cantidadDeEntradas){
		capacidadDelEstadio = cantidadDeEntradas
	}
	
	method precioEntrada(){
		return precioEntrada
	}
	
	method entradasAVender()= capacidadDelEstadio * porcentajeDePopularidad
	
	method asignarViaticos(cantidadAPagar){
		viaticos = cantidadAPagar
	}
	
	method verViaticos(){
		return viaticos
	}
	
	method asignarCostoDelAlquiler(monto){
		costoAlquiler = monto
	}
	
	method gananciaNeta()= (self.entradasAVender() * precioEntrada)- viaticos - costoAlquiler
	
	method cambiarInflacion(){
		hayInflacion= not hayInflacion
	}
	
	method valorDeEntradasPorInflacion(){
		if (not hayInflacion){
			precioEntrada= 10000
		}else{
		 	precioEntrada= 20000
		 }
	}
	
	method opinarDelPresidenteDeAFA(){
		porcentajeDePopularidad = porcentajeDePopularidad - 0.05
	}
	
	method avancesDelMonumental(){
		capacidadDelMonumental= if (estadioListo) 90000 else 70000
	}
	
	method cambiarEstadoDelMonumental(){
		estadioListo = not estadioListo
	}
	
	method realizarPartido(){
		self.asignarCapacidadDelEstadio(50000)
		self.asignarCostoDelAlquiler(5000000)
		self.asignarViaticos(10000000)
	}
}


object ronaldo{
	var porcentajeDePopularidad= (messi.popularidad()/2)/100
	var precioEntrada = 10000
	var capacidadDelEstadio
	var viaticos
	var costoAlquiler
	var hayInflacion = false
	
	
	method irALaAntartida(){
		porcentajeDePopularidad = porcentajeDePopularidad - 0.5
	}
	
	method popularidad(){
		return porcentajeDePopularidad
	}
	
	method precioEntrada(){
		return precioEntrada
	}
	
	method asignarCapacidadDelEstadio(cantidadDeEntradas){
		capacidadDelEstadio = cantidadDeEntradas
	}
	
	method entradasAVender()= capacidadDelEstadio * porcentajeDePopularidad
	
	method asignarViaticos(cantidadAPagar){
		viaticos = cantidadAPagar
	}
	
	method asignarCostoDelAlquiler(monto){
		costoAlquiler = monto
	}
	
	method gananciaNeta()= (self.entradasAVender() * precioEntrada)- viaticos - costoAlquiler
	
	method cambiarInflacion(){
		hayInflacion= not hayInflacion
	}
	
	method valorDeEntradasPorInflacion(){
		precioEntrada= if (not hayInflacion) precioEntrada else precioEntrada + 100 
	}
	
	method verViaticos(){
		return viaticos
	}
	
	method realizarPartido(){
		self.asignarCapacidadDelEstadio(30000)
		self.asignarCostoDelAlquiler(5000000)
		self.asignarViaticos(messi.verViaticos()*2)
	}
}

object mbappe{
	var edad = 0
	var golesEnFinal 
	var precioEntrada = 10000
	var porcentajeDePopularidad= (self.mostrarEdad() * 2 + self.golesTotalesEnFinales())/100
	var capacidadDelEstadio
	var viaticos
	var costoAlquiler
	var hayInflacion = false
	
	method asignarEdad(cantidadDeAnios){
		edad= cantidadDeAnios
	}
	
	method cumplirAnios(){
		edad = edad + 1
	}
	
	method mostrarEdad(){
		return edad
	}
	
	method popularidad(){
		return porcentajeDePopularidad
	}
	
	method hablarMalDeMessi(){
		porcentajeDePopularidad = porcentajeDePopularidad - 0.5
	}
	
	method precioEntrada(){
		return precioEntrada
	}
	
	method asignarCapacidadDelEstadio(cantidadDeEntradas){
		capacidadDelEstadio = cantidadDeEntradas
	}
	
	method entradasAVender()= capacidadDelEstadio * porcentajeDePopularidad
	
	method asignarViaticos(cantidadAPagar){
		viaticos = cantidadAPagar
	}
	
	method asignarCostoDelAlquiler(monto){
		costoAlquiler = monto
	}
	
	method gananciaNeta()= (self.entradasAVender() * precioEntrada)- viaticos - costoAlquiler
	
	method realizarPartido(){
		self.asignarCapacidadDelEstadio(30000)
		self.asignarCostoDelAlquiler(5000000)
		self.asignarViaticos(10000000)
	}
	
	method verViaticos(){
		return viaticos
	}
	
	method darGolesEnFinalesDelMundo(cantidadDeGoles){
		golesEnFinal= cantidadDeGoles
	} 
	
	method golesTotalesEnFinales(){
		return golesEnFinal
	}
	
	method cambiarInflacion(){
		hayInflacion= not hayInflacion
	}
	
	method valorDeEntradasPorInflacion(){
		precioEntrada= if (not hayInflacion) precioEntrada else precioEntrada + 100 
	}
}
