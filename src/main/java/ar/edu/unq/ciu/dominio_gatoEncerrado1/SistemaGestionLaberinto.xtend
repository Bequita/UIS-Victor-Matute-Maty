package ar.edu.unq.ciu.dominio_gatoEncerrado1

import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class SistemaGestionLaberinto{
	
	val ArrayList<String> listaLaberintos
	var Laberinto laberintoConfigurado 
	var int habitacionActual 
	
	new(){
		
		habitacionActual = 0
		laberintoConfigurado = new Laberinto("TEMPORAL")
		listaLaberintos = new ArrayList()
		
	}

	def agregarLaberinto(String nombreLab){
		listaLaberintos.add(nombreLab);
	}
	
	def void elegirLaberinto(String nombreLab){
//		var nombre = listaLaberintos.findFirst[laberinto | laberinto == nombreLab];
		laberintoConfigurado.nombreLaberinto = nombreLab
	}
	
	def void agregarHabitacionALaberinto(String nombreHabitacion) {
		var habitacion = new Habitacion(nombreHabitacion)
		laberintoConfigurado.agregarHabitacion(habitacion)
		
	}
	
	def void agregarItemAHabitacionDelLaberinto(String nombreHabitacion,String nombreItem){
		
		var Habitacion habitacion = laberintoConfigurado.listaHabitaciones.filter[tieneElMismoNombre(nombreHabitacion)] as Habitacion
		habitacion.agregarItem(nombreItem)
	}
	
	def void marcarHabitacionInicial(int numeroHabitacion){
		
		var  habitacion = laberintoConfigurado.buscarHabitacion(numeroHabitacion)
		habitacion.marcarComoInicial()
		habitacionActual = numeroHabitacion
	}
	
	def marcarHabitacionFinal(int numeroHabitacion){
		
		var  habitacion = laberintoConfigurado.buscarHabitacion(numeroHabitacion)
		habitacion.marcarComoFinal()
		
		
	}
	
	def static void main(String[] args) {
  	}
}