package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionDeUsarItem extends Accion{
	
	Item item
	
	new(Habitacion habitacion){
		super(habitacion)
	}
	
	new(Integer id,String nombre,Habitacion habitacion,String nombItem,Accion accionDelItem){
		super(id,nombre,habitacion)
		item = new Item
		item.nombre = nombItem
		accion = "Elemento - " + item.nombre
		item.accionPosible = accionDelItem
	}
	
	override ejecutar(Laberinto lab){
		return item.accionPosible.ejecutar(lab)
	}
}