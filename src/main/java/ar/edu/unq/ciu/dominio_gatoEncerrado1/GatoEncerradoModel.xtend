package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class GatoEncerradoModel {

	var List<Laberinto> listaLaberintos
	var List<Jugador> jugadores
	var Laberinto laberintoActual
	var Habitacion habitacionActual
	var Jugador jugadorActual

	new() {

		jugadores = newArrayList()
		listaLaberintos = newArrayList()

		var jugador = new Jugador('matayas')
		jugadores.add(jugador)
		jugadorActual = jugador

		/* Creacion de laberintos */
		var laberinto1 = new Laberinto("La Cueva", 1, "../images/Lab1.jpg")
		var laberinto2 = new Laberinto("La Mansion", 2, "../images/Lab2.jpg")
		var laberinto3 = new Laberinto("El Bosque ", 3, "../images/Lab3.jpg")

		listaLaberintos.add(laberinto1)
		listaLaberintos.add(laberinto2)
		listaLaberintos.add(laberinto3)

		/*Inicializacion de laberinto actual */
		laberintoActual = laberinto1

		/* Creacion del habitaciones para el Lab1  */
		var habitacion1 = new Habitacion("Habitacion1", 1, "../images/habitacion1.jpg")
		var habitacion2 = new Habitacion("Habitacion2", 2, "../images/habitacion2.jpg")
		var habitacion3 = new Habitacion("Habitacion3", 3, "../images/habitacion3.jpg")

		laberintoActual.agregarHabitacion(habitacion1)
		laberintoActual.agregarHabitacion(habitacion2)
		laberintoActual.agregarHabitacion(habitacion3)

		/*Asignacion de Habitacion inicial y final */
		laberintoActual.marcarHabitacionInicial(1)
		laberintoActual.marcarHabitacionFinal(3)

		/*Inicializacion de habitacion actual */
		habitacionActual = seleccionarHabitacion(laberintoActual)

		/* Creacion de acciones para las Habitaciones del Lab1  */
		var accion = new AccionDeMoverse(5, "Accion de Moverse a habitacion 3", habitacion3)
		var accion1 = new AccionDeUsarItem(1, "Accion de Usar Item Cuchara", habitacion1, "Cuchara", accion)
		var accion2 = new AccionDeMoverse(2, "Accion De Moverse a habitacion 2", habitacion2)
		var accion3 = new AccionDeAgarrarUnElemento(3, "Accion de agarrar elemento Martillo", habitacion3, "Martillo")
		var accion4 = new AccionDeMoverse(4, "Accion de moverse a habitacion 2", habitacion2)
		var accionFinal = new AccionDeMoverse(6, "Accion de salir al exterior", habitacion1)

		laberintoActual.agregarAccionALaHabitacion(1, accion2)
		laberintoActual.agregarAccionALaHabitacion(2, accion)
		laberintoActual.agregarAccionALaHabitacion(3, accionFinal)

		//		laberintoActual.agregarAccionALaHabitacion(1,accion1)
		//		laberintoActual.agregarAccionALaHabitacion(1,accion2)
		//		laberintoActual.agregarAccionALaHabitacion(1,accion3)
		//		laberintoActual.agregarAccionALaHabitacion(3,accion4)
		/* Se inserta un item al inventario del Lab1 */
		var Item item1 = new Item(1, "Pala", "Habilita ir a habitacion 2", "")
		var Item item2 = new Item(2, "Pistola", "Habilita a usar Bate", "")
		var Item item3 = new Item(3, "Bate", "Habilita a salir del laberinto", "")
		this.agregarItemAlJugador(item1)
		this.agregarItemAlJugador(item2)
		this.agregarItemAlJugador(item3)

	}

	/*
	 *	Obtiene la lista de items (inventario) del jugador actual 
	 */
	def obtenerInventario(Jugador jugador) {
		return jugador.inventario
	}

	/*
	 *	Elimina un item del inventario del jugador actual 
	 */
	def void eliminarItemDelInventario(Jugador jugador, String nombreItem) {
		jugador.eliminarItemInventario(nombreItem)
	}

	def seleccionarHabitacion(Laberinto laberinto) {
		laberinto.habitacionInicial()
	}

	def agregarItemAlJugador(Item item) {
		jugadorActual.agregarItemAlInventario(item)
	}

	/**
	 * Crea un laberinto sin habitaciones y lo guarda en ListaLaberintos
	 */
	def crearLaberinto(String nomLab, Integer id) {
		var laberinto = new Laberinto(nomLab, id)
		this.agregarLaberinto(laberinto)
	}

	/**
	 * Elimina una laberinto
	 */
	def eliminarLaberinto(String nomLab) {
		listaLaberintos.remove(this.buscarLaberinto(nomLab))
	}

	def Laberinto buscarLaberinto(String nomLab) {
		return listaLaberintos.findFirst[laberinto|laberinto.nombreLaberinto == nomLab]
	}

	def Laberinto laberintoPorId(Integer idLab) {
		return listaLaberintos.findFirst[laberinto|laberinto.id == idLab]
	}

	def agregarLaberinto(Laberinto lab) {
		listaLaberintos.add(lab);
	}

	/**
	 * Agrega una habitacion al laberinto pasado por parametro
	 */
	def agregarHabitacionALaberinto(String nomLab, Habitacion hab) {
		var Laberinto lab = this.buscarLaberinto(nomLab)
		lab.agregarHabitacion(hab)
	}

	def agregarAccionAHabitacionDeLaberinto(String nombLab, String nomHab, Accion acc) {
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

	def List<String> nombresDeLaberintos() {

		return listaLaberintos.map[nombreLaberinto]
	}

	def Boolean hayLaberintosConElMismoNombre(String nombreLab) {
		return nombresDeLaberintos.contains(nombreLab)
	}

	def buscarJugador(String idUsuario) {
		return jugadores.findFirst[jugador|jugador.idUsuario == idUsuario]
	}

	def seleccionarLaberinto(String nombreDeLaberinto) {
		laberintoActual = buscarLaberinto(nombreDeLaberinto)
	}

}
