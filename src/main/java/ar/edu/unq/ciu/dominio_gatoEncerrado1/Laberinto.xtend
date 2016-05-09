package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors;
import java.util.ArrayList
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class Laberinto {
	
	var Integer id
	var String nombreLaberinto;
	var List<Habitacion> listaHabitaciones = new ArrayList
	var List<Item> listaItems = new ArrayList
	//var ImageIcon imagen
	var String rutaImagen
	var String descripcion
	
	new(String nombreLab, Integer numeroLaberinto){
		id = numeroLaberinto
		nombreLaberinto = nombreLab
		descripcion = id.toString+" "+nombreLaberinto+" "+rutaImagen
	}
	
	new(String nombreLab, Integer numeroLaberinto,String rutaDeLaImagen){
		id = numeroLaberinto
		nombreLaberinto = nombreLab
		rutaImagen = rutaDeLaImagen
		descripcion = id.toString+nombreLaberinto+rutaImagen
	}
	
	new() {
	}
	
	def void agregarHabitacion(Habitacion habitacionNueva){
		listaHabitaciones.add(habitacionNueva)
	}
	
	def buscarHabitacion(String nomHab) {
		return listaHabitaciones.findFirst[habitacion | habitacion.nombreHabitacion == nomHab]
	}
	
	def eliminarHabitacion(Habitacion habitacion) {
	    listaHabitaciones.remove(habitacion)
	}
	
	def agregarItem(Item item) {
		listaItems.add(item)
	}
	
	def existeHabitacionFinal() {
		
		listaHabitaciones.exists[habitacion | habitacion.esFinal == true]
	}

}