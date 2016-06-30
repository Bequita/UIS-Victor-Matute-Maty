package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors
class Jugador {
	var String idUsuario
	var Inventario inventario = new Inventario(0)
	var List<String> laberintosJugados = new ArrayList

	new(String id) {
		idUsuario = id
	}

	def void agregarItemAlInventario(Item item) {

		inventario.agregarItemDelInventario(item)
	}

	def eliminarItemInventario(String nombreItem) {
		if (this.inventario.estaElItem(nombreItem)) {
			this.inventario.eliminarItem(nombreItem)
		}
	}

	def obtenerInventario() {
		return inventario
	}

	def agarroItem(String nombreItem) {
		inventario.estaElItem(nombreItem)
	}

}
