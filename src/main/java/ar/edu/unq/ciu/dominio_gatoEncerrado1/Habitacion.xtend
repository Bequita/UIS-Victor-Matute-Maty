package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList
import org.uqbar.commons.utils.Observable
import java.util.List

@Observable
@Accessors
class Habitacion {
	
	String nombreHabitacion
	int id 
	var List<Item> listaItems
	var TipoHabitacion tipoHabitacion
	var List<Accion> listaDeMovimientos
	
	new(String nom) {
		nombreHabitacion = nom
		id = 0
		listaItems= newArrayList
		listaDeMovimientos = newArrayList
		tipoHabitacion = TipoHabitacion.COMUN
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
	
	def marcarComoInicial(){
		
		tipoHabitacion = TipoHabitacion.INICIAL
	}
	
	def marcarComoFinal(){
		
		tipoHabitacion = TipoHabitacion.FINAL
	}
	
}