package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors;
import java.util.ArrayList
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion

@Accessors
class Laberinto {
	
	var String nombreLaberinto;
	var ArrayList<Habitacion> listaHabitaciones 
	
	new(String nombreLab){
		nombreLaberinto = nombreLab
		listaHabitaciones = new ArrayList()
	}
	
	def void agregarHabitacion(Habitacion habitacionNueva){
		
		listaHabitaciones.add(habitacionNueva)
	}
}