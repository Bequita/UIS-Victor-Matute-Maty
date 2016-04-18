package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import org.uqbar.commons.model.UserException

@Observable
@Accessors
class CrearLaberintoAppModel {
 	
 	var Laberinto nuevoLaberinto
 	var Habitacion nuevaHabitacion
 	var Accion nuevaAccion
	var GatoEncerradoModel sistema
	var boolean habitacionFinalSeteada = false
	
	new(){
		sistema = new GatoEncerradoModel
		nuevoLaberinto = sistema.listaLaberintos.get(0)
		nuevaHabitacion = nuevoLaberinto.listaHabitaciones.get(0)
		nuevaAccion = new Accion()
	}
	
	def agregarLaberintoNuevo(Laberinto nuevoLab){
		sistema.agregarLaberinto(nuevoLab)
	}
	
	def agregarHabitacionNueva(String nombreLab) {
		sistema.agregarHabitacionALaberinto(nombreLab, nuevaHabitacion)
	}
	
	def eliminarAccion() {
		sistema.eliminarAccionDeLaHabitacion(nuevaHabitacion, nuevaAccion)
	}
	
	def eliminarHabitacion() {
		sistema.eliminarHabitacionDelLaberinto(nuevoLaberinto, nuevaHabitacion)
	}
	
	def eliminarLaberinto() {
		sistema.eliminarLaberinto(nuevoLaberinto.nombreLaberinto)
	}
	
	def laberintosConElMismoNombre(String nombreLaberinto) {
		
		if(seRepiteElNombre(nombreLaberinto)){
			
		   throw new UserException("Ya existe un laberinto con ese nombre")
		}
	}
	
	def Boolean seRepiteElNombre(String nombreLaberinto) {
       sistema.hayLaberintosConElMismoNombre(nombreLaberinto)
	}
	
	def validarHabitacionFinal() {
		
		if(nuevoLaberinto.existeHabitacionFinal()){
			
			throw new UserException("Ya existe una habitacion final")
		}
	}
	
	def habitacionFinalOcupada(){
		if(!this.habitacionFinalSeteada){
			this.habitacionFinalSeteada = true 
		}
		else {
			throw new UserException("Ya existe una habitacion final")
		}
	}
			
	
	
	
	
}
