package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionDeAgarrarUnElemento extends Accion {
	
	Item item
	
	new(Habitacion habitacion){
		super(habitacion)
		item = new Item
		accion = "Elemento - " + item.nombre
	}
	
	new(Integer id,String nombre,Habitacion habitacion){
		super(id,nombre,habitacion)
		item = new Item
		accion = "Elemento - " + item.nombre
	}
	
	new() {
	}
	
	override ejecutar(Laberinto lab){
		lab.agregarItemAlInventario(item)
		habitacion.eliminarAccion(this)
		
		return "Se agarro el elemento" + " " + item.nombre
	}
}