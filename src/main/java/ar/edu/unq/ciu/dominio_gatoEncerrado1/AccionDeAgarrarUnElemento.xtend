package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionDeAgarrarUnElemento extends Accion {
	
	Item item
	
	new(Habitacion habitacion){
		super(habitacion)
		item = new Item
		accion = "Elemento - " + item.nombreItem
	}
	
	new() {
	}
	
}