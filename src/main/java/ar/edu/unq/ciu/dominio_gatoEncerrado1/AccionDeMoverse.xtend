package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class AccionDeMoverse extends Accion{
	
	new(Habitacion habitacion) {
		super(habitacion)
		accion = "Ir a habitacion - " + habitacion.nombreHabitacion
	}
	
	new(Integer id,String nombre,Habitacion habitacion){
		super(id,nombre,habitacion)
		accion = "Ir a habitacion - " + habitacion.nombreHabitacion
	}
	
	new() {
	}
	
	override ejecutar(Laberinto lab){
		lab.habitacionActual = habitacion.id
		
		return "Se movio a la Habitacion" + " " + habitacion.id.toString
	}
	
}