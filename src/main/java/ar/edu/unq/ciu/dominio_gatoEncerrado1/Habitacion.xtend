package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class Habitacion {
	
	String nombreHabitacion
	var List<Item> listaItems
	Boolean esInicial
	Boolean esFinal
	var List<Accion> listaAcciones
	
	new(String nombre) {
		nombreHabitacion = nombre
		listaItems = newArrayList
		listaAcciones = newArrayList
	}
	
	new() {
	}
	
	def movimientosPosibles(int numHab){
//		listaDeMovimientos.add(numHab)
	}
	
	def void agregarItem(String nuevoItem){
		var item = new Item(nuevoItem)
		listaItems.add(item)
	}
	
	def descartarItem(Item item) {
		listaItems.remove(item)
	}
	
}