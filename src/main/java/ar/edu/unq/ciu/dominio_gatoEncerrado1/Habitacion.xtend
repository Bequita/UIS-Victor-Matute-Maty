package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List
import org.uqbar.commons.model.UserException

@Observable
@Accessors
class Habitacion {
	
	String nombreHabitacion
	Boolean esInicial = false
	Boolean esFinal = false
	var List<Accion> listaAcciones = newArrayList
	
	new(String nombre) {
		nombreHabitacion = nombre
	}
	
	new() {
	}
	
	def void setEsFinal(){
		
		throw new UserException("Ya existe una habitacion final")
		
	}
	
	def void agregarAccion(Accion accion) {
		if(accion instanceof AccionDeAgarrarUnElemento) {
			accion.accion = "Elemento - " + accion.item.nombreItem
		}
		listaAcciones.add(accion)
	}
	
	def buscarAccion(Accion acc){
		return listaAcciones.findFirst[accion | accion.accion == acc.accion]
	}
	
	def void eliminarAccion(Accion accion) {
		listaAcciones.remove(accion)
	}
	
	def ultimaAccionAgregada(){
		listaAcciones.get(listaAcciones.size-1).accion
	}
	
}