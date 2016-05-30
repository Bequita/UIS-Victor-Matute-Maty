package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable
import java.util.List
import org.uqbar.commons.model.UserException

@Observable
@Accessors
class Habitacion {
	
	var Integer id 
	var String nombreHabitacion
	var Boolean esInicial = false
	var Boolean esFinal = false
	var List<Accion> listaAcciones = newArrayList
	var String rutaImagen
	
	new(String nombre) {
		nombreHabitacion = nombre
	}
	
	new(String nombre, Integer idHab, String path){
		nombreHabitacion = nombre
		id = idHab
		rutaImagen = path
	}
	
	new() {
	}
	
	
	def void setEsInicial(){
		
		esInicial = true
		
	}
	
	def void setEsFinal(){
		
		esFinal = true
		
	}
	
	def void agregarAccion(Accion accion) {
		if(accion instanceof AccionDeAgarrarUnElemento) {
			accion.accion = "Elemento - " + accion.item.nombre
		}
		listaAcciones.add(accion)
	}
	
	def buscarAccion(Accion acc){
		return listaAcciones.findFirst[accion | accion.accion == acc.accion]
	}
	
	def buscarAccionPorId(Integer idAccion){
		return listaAcciones.findFirst[accion | accion.id == idAccion]
	}
	
	def void eliminarAccion(Accion accion) {
		listaAcciones.remove(accion)
	}
	
	def ultimaAccionAgregada(){
		listaAcciones.get(listaAcciones.size-1).accion
	}
	
	def tipo(){
		if(esFinal){
			return "Es la Habitacion Final del Laberinto"
		}else{
			if(esInicial){
				return "Es la Habitacion Incial del Laberinto"
			}
			else{
				return "Habitacion Comun"
			}
		}
	}
}	
