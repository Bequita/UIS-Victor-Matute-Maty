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
	var String rutaImagen
	var String descripcion

	new(String nombreLab, Integer numeroLaberinto) {
		id = numeroLaberinto
		nombreLaberinto = nombreLab
		descripcion = "Laberinto de dificultad " + calcularDificultad(id);
	}

	new(String nombreLab, Integer numeroLaberinto, String rutaDeLaImagen) {
		id = numeroLaberinto
		nombreLaberinto = nombreLab
		rutaImagen = rutaDeLaImagen
		descripcion = "Laberinto de dificultad " + calcularDificultad(id);
	}

	new(Integer idLab, String nombreLab, String path, String descrip) {
		id = idLab
		nombreLaberinto = nombreLab
		rutaImagen = path
		descripcion = "Laberinto de dificultad " + calcularDificultad(id);
	}

	new() {
	}

	def calcularDificultad(Integer id) {
		switch id {
			case id <= 1: "facil."
			case (id > 1) && (id <= 2) : "media."
			case (id >= 3) : "dificil."
		}
	}

	def void agregarHabitacion(Habitacion habitacionNueva) {
		listaHabitaciones.add(habitacionNueva)
	}

	def buscarHabitacion(String nomHab) {
		return listaHabitaciones.findFirst[habitacion|habitacion.nombreHabitacion == nomHab]
	}

	def buscarHabitacionPorId(Integer idHab) {
		return listaHabitaciones.findFirst[habitacion|habitacion.id == idHab]
	}

	def eliminarHabitacion(Habitacion habitacion) {
		listaHabitaciones.remove(habitacion)
	}

	//	def agregarItem(Item item) {
	//		listaItems.add(item)
	//	}
	def existeHabitacionFinal() {
		listaHabitaciones.exists[habitacion|habitacion.esFinal == true]
	}

	def agregarAccionALaHabitacion(Integer idHab, Accion acc) {
		this.buscarHabitacionPorId(idHab).agregarAccion(acc)
	}

	def marcarHabitacionInicial(int numeroHabitacion) {
		buscarHabitacionPorId(numeroHabitacion).setEsInicial()
	}

	def marcarHabitacionFinal(int numeroHabitacion) {
		buscarHabitacionPorId(numeroHabitacion).setEsFinal()
	}

	def habitacionInicial() {
		buscarHabitacionPorId(1)
	}

}
