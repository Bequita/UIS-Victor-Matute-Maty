package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList
import java.util.Observable
import java.util.Observer

@Accessors
class Habitacion extends Observable{
	
	String nombre
	int id 
	var ArrayList<Item> listaItems 
	var TipoHabitacion tipoHabitacion  
	var ArrayList<Accion> listaDeMovimientos
	
	new(String nom) {
		nombre = nom
		id = 0
		listaItems= new ArrayList()
		listaDeMovimientos = new ArrayList()
		tipoHabitacion = TipoHabitacion.COMUN
	}
	
	def movimientosPosibles(int numHab){
//		listaDeMovimientos.add(numHab)
	}
	
	def moverseA(int numeroHabitacion){
		
		setChanged()
		notifyObservers(numeroHabitacion)
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