package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class Habitacion {
	
	String nombreHabitacion
	Boolean esInicial = false
	Boolean esFinal = false
	var List<Accion> listaAcciones = newArrayList
	
	new(String nombre) {
		nombreHabitacion = nombre
	}
	
	new() {
	}
	
	def void agregarAccion(Accion accion) {
		if(accion instanceof AccionDeAgarrarUnElemento) {
			accion.accion = "Elemento - " + accion.item.nombreItem
		}
		listaAcciones.add(accion)
	}
	
	def void eliminarAccion(Accion accion) {
		listaAcciones.remove(accion)
	}
	
}