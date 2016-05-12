package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class GatoEncerradoModel{
	
	var List<Laberinto> listaLaberintos
	
	new(){
		listaLaberintos = newArrayList()
		listaLaberintos.add(new Laberinto("Lab1",1))
		listaLaberintos.add(new Laberinto("Lab2",2))
		listaLaberintos.add(new Laberinto("Lab3",3))
		
		listaLaberintos.get(0).agregarHabitacion(new Habitacion("Habitacion1"))
		listaLaberintos.get(0).agregarHabitacion(new Habitacion("Habitacion2"))
		listaLaberintos.get(0).agregarHabitacion(new Habitacion("Habitacion3"))
		
		listaLaberintos.get(0).listaHabitaciones.get(0).listaAcciones.add(new AccionDeMoverse(new Habitacion("Habitacion4")))
	}
	
	/**
	 * Crea un laberinto sin habitaciones y lo guarda en ListaLaberintos
	 */
	def crearLaberinto(String nomLab,Integer id){
		var laberinto = new Laberinto(nomLab,id)
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
	
	def agregarAccionAHabitacionDeLaberinto(String nombLab,String nomHab,Accion acc){
		var Laberinto lab = this.buscarLaberinto(nombLab)
		lab.buscarHabitacion(nomHab).agregarAccion(acc)
	}
	
	/**
	 * Elimina una habitacion al laberinto pasado por parametro
	 */
	def eliminarHabitacionDelLaberinto(Laberinto laberinto, Habitacion habitacion) {
		laberinto.eliminarHabitacion(habitacion)
	}
	
	/**
	 * Elimina una accion de la habitacion pasada por parametro
	 */
	def eliminarAccionDeLaHabitacion(Habitacion habitacion, Accion accion) {
		habitacion.eliminarAccion(accion)
	}
	
	
	def List<String> nombresDeLaberintos(){
		
		return listaLaberintos.map[nombreLaberinto]
  	}
	
	def Boolean hayLaberintosConElMismoNombre(String nombreLab) {
		return nombresDeLaberintos.contains(nombreLab)
	}
	
	def List<Integer> idLaberintos(){
		return listaLaberintos.map[id]
	}
	
	def List<String> rutaDeLaImagenDelLaberinto(){
		return listaLaberintos.map[rutaImagen]
	}
	
	def List<String> descripcionLaberinto(){
		return listaLaberintos.map[descripcion]
	}
}