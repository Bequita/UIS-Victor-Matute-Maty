package ar.edu.unq.ciu.dominio_gatoEncerrado1

class Jugador {
	
	String nombreJugador
	var Inventario inventario
	
	new(String nombre){
		
		nombreJugador = nombre	
		
		
	}
	
	/**
	 * Agrega un item al inventario del jugador y lo elimina de la habitacion 
	 * correspondiente
	 * 
	 * @param hab: La habitacion de donde se agarra el item.
	 * @param item: El item que se agrega al inventario
	 */
	
	def void agarrarItem(Habitacion hab, Item item){
		
		hab.descartarItem(item)
		inventario.agregarItemDelInventario(item)
	}
}