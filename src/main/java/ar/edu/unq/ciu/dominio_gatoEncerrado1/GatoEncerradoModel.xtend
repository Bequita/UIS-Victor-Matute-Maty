package ar.edu.unq.ciu.dominio_gatoEncerrado1

import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class GatoEncerradoModel{
	
	//val ArrayList<String> listaNombreLaberintos
	var ArrayList<Laberinto> listaLaberintos
	var Habitacion habitacionActual

	new(){
		listaLaberintos = new ArrayList()
	}
	
	/**
	 * Crea un laberinto sin habitaciones y lo guarda en ListaLaberintos
	 */
	def crearLaberinto(String nomLab){
		var laberinto = new Laberinto(nomLab)
		this.agregarLaberinto(laberinto)
	}
	
	/**
	 * Agrega una habitacion al laberinto pasado por parametro
	 */
	def agregarHabitacionALaberinto(String nomLab,Habitacion hab) {
		var Laberinto lab = this.buscarLaberinto(nomLab)
		hab.id = lab.listaHabitaciones.size
		lab.agregarHabitacion(hab)
		//laberintoConfigurado.agregarHabitacion(habitacion)
	}
	
	/**
	 * Elimina una habitacion al laberinto pasado por parametro
	 */
	def eliminarHabitacionDelLaberinto(String nomLab,int numHab) {
		var Laberinto lab = this.buscarLaberinto(nomLab)
		lab.listaHabitaciones.remove(numHab)
		//laberintoConfigurado.agregarHabitacion(habitacion)
	}
	
	/**
	 * Elimina una laberinto
	 */
	def eliminarLaberinto(String nomLab){	
		listaLaberintos.remove(this.buscarLaberinto(nomLab))
	}
	
	def Laberinto buscarLaberinto(String nomLab){
		return listaLaberintos.findFirst[laberinto | laberinto.nombreLaberinto == nomLab]
		
	}

	def agregarLaberinto(Laberinto lab){
		listaLaberintos.add(lab);
	}
	
	def Laberinto elegirLaberinto(String nombreLab){
		
      return buscarLaberinto(nombreLab)
		
	}
	/*
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
		
		
	}*/
}