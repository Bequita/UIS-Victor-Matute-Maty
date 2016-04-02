package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList

@Accessors
class Habitacion {
	
	String nombre
	int id 
	var ArrayList<Item> listaItems 
	var TipoHabitacion tipoHabitacion  
	var ArrayList<AccionMoverse> listaDeMovimientos
	
	new(String nom) {
		nombre = nom
		id = 0
		listaItems= new ArrayList()
		tipoHabitacion = TipoHabitacion.COMUN
	}
	
	def movimientosPosibles(int numHab){
		listaDeMovimientos.add(new AccionMoverse(numHab))
	}
	
	def accionesPosibles(){
		
	}
	
	def void agregarItem(String nuevoItem){
		var item = new Item(nuevoItem)
		listaItems.add(item)
	}
	
	def tieneElMismoNombre(String nombreHabitacion){
		return nombre == nombreHabitacion
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