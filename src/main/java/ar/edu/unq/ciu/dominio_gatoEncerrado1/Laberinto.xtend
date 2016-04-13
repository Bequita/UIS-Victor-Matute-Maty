package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors;
import java.util.ArrayList
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class Laberinto {
	
	var String nombreLaberinto;
	var List<Habitacion> listaHabitaciones	
	
	new(String nombreLab){
		nombreLaberinto = nombreLab
		listaHabitaciones = new ArrayList
	}
	
	new() {
		listaHabitaciones = new ArrayList
	}
	
	def void agregarHabitacion(Habitacion habitacionNueva){
		listaHabitaciones.add(habitacionNueva)
	}
	
	def buscarHabitacion(int numeroHabitacion) {
		return listaHabitaciones.get(numeroHabitacion)
	}
	
	def eliminarHabitacion(Habitacion habitacion) {
	    listaHabitaciones.remove(habitacion)
	}

}