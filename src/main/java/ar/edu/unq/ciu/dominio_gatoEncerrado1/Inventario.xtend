package ar.edu.unq.ciu.dominio_gatoEncerrado1

import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Inventario {
	
	int cantidadMaximaDeItems
    ArrayList<Item> items
    
    new(int maximo){
    	
    	this.cantidadMaximaDeItems = maximo
    	this.items = new ArrayList()
    }
	
	/**
	 * Retorna true si el inventario posee la cantidad maxima permitida de items.
	 */
	
	def inventarioLleno(){
		
		return items.size == cantidadMaximaDeItems
	}
	
	def agregarItemDelInventario(Item item) {
	   
		items.add(item)
	}
	
	def estaElItem(String nombre){
		return items.exists[item | item.nombre == nombre]
		}
}