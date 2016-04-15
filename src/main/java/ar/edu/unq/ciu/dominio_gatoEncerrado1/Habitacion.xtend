package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class Habitacion {
	
	String nombreHabitacion
	var List<Item> listaItems = newArrayList 
	Boolean esInicial = false
	Boolean esFinal = false
	var List<Accion> listaAcciones = newArrayList
	
	new(String nombre) {
		nombreHabitacion = nombre
	}
	
	new() {
	}
	
	def void agregarItem(String nuevoItem){
		var item = new Item(nuevoItem)
		listaItems.add(item)
	}
	
	def descartarItem(Item item) {
		listaItems.remove(item)
	}
	
	def void eliminarAccion(Accion accion) {
		listaAcciones.remove(accion)
	}
	
}