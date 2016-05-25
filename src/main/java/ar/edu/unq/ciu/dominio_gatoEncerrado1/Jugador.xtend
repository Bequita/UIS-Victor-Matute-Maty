package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors
class Jugador {
	var Integer idUsuario
	var Inventario inventario = new Inventario(0)
	var List<String> laberintosJugados = new ArrayList
	
	new(Integer id){
		idUsuario = id
	}
	
	def void agregarItemAlInventario(Item item){
		
		inventario.agregarItemDelInventario(item)
	}
	
	
}