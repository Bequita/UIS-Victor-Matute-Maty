package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class GatoEncerradoModel{
	
	//val ArrayList<String> listaNombreLaberintos
	var List<Laberinto> listaLaberintos
	
	new(){
		listaLaberintos = newArrayList()
		listaLaberintos.add(new Laberinto("Lab1"))
		listaLaberintos.add(new Laberinto("Lab2"))
		listaLaberintos.add(new Laberinto("Lab3"))
		
		listaLaberintos.get(0).agregarHabitacion(new Habitacion("Habitacion1"))
		listaLaberintos.get(0).agregarHabitacion(new Habitacion("Habitacion2"))
		listaLaberintos.get(0).agregarHabitacion(new Habitacion("Habitacion3"))
	}
	
	/**
	 * Crea un laberinto sin habitaciones y lo guarda en ListaLaberintos
	 */
	def crearLaberinto(String nomLab){
		var laberinto = new Laberinto(nomLab)
		this.agregarLaberinto(laberinto)
	}
	
		/**
	 * Elimina una laberinto
	 */
	 def  eliminarLaberinto(String nomLab){	
		listaLaberintos.remove(this.buscarLaberinto(nomLab))
	}
	
	def Laberinto buscarLaberinto(String nomLab){
		return listaLaberintos.findFirst[laberinto | laberinto.nombreLaberinto == nomLab]
	}

	def agregarLaberinto(Laberinto lab){
		listaLaberintos.add(lab);
	}
	
	/**
	 * Agrega una habitacion al laberinto pasado por parametro
	 */
	def agregarHabitacionALaberinto(String nomLab,Habitacion hab) {
		var Laberinto lab = this.buscarLaberinto(nomLab)
		lab.agregarHabitacion(hab)
	}
	
	/**
	 * Elimina una habitacion al laberinto pasado por parametro
	 */
	def eliminarHabitacionDelLaberinto(Laberinto laberinto, Habitacion habitacion) {
		laberinto.eliminarHabitacion(habitacion)
	}
	
}