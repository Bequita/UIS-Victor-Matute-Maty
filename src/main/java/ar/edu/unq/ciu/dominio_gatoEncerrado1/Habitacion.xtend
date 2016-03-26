package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList

@Accessors
class Habitacion {
	
	String nombre
	var ArrayList<Item> listaItems 
	val TipoHabitacion tipoHabitacion 
	
	new(String nom) {
		nombre = nom;
		listaItems= new ArrayList()
		tipoHabitacion = TipoHabitacion.INICIAL
		
	}
	
	def void agregarItem(String nuevoItem){
		var item = new Item(nuevoItem)
		listaItems.add(item)
	}
	
	def tieneElMismoNombre(String nombreHabitacion){
		return nombre == nombreHabitacion
	}
	
}