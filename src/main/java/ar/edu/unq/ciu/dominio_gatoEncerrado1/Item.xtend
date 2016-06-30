package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Item {
	
	var Integer id
	var String nombre
	var String descripcion
	var Accion accionPosible
	var String rutaImagen
	
	new(){}
	
	new(Integer idItem,String nombreItem,String descripcionItem, String ruta){
		id = idItem
		nombre = nombreItem
		descripcion = descripcionItem
		rutaImagen = ruta
	}
	
	def void ejecutarAccion(){}
	
//	def agregarHabitacionPermitida(Integer numeroDeHabitacion){
//		
//		habitacionesPermitidas.add(numeroDeHabitacion)
//	}
//	
//	def boolean puedeMoverseA(int numeroDeHabitacion){
//		
//		return habitacionesPermitidas.contains(numeroDeHabitacion)
//		
//	}
	
	
}