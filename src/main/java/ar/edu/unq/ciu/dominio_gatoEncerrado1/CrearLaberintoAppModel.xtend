package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class CrearLaberintoAppModel {
 	
 	var Laberinto nuevoLaberinto
 	var Habitacion nuevaHabitacion
	var GatoEncerradoModel sistema
	
	new(){
		sistema = new GatoEncerradoModel
		nuevoLaberinto = sistema.listaLaberintos.get(0)
		nuevaHabitacion = nuevoLaberinto.listaHabitaciones.get(0)
	}
	
	def agregarLaberintoNuevo(Laberinto nuevoLab){
		sistema.agregarLaberinto(nuevoLab)
	}
	
	def agregarHabitacionNueva(String nombreLab) {
		sistema.agregarHabitacionALaberinto(nombreLab, nuevaHabitacion)
	}
	
	def eliminarLaberinto() {
		sistema.eliminarLaberinto(nuevoLaberinto.nombreLaberinto)
	}
}