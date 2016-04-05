package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.ArrayList

@Accessors
class Item {
	var String nombre 
	var ArrayList<Integer> habitacionesPermitidas 
	
	new(){}
	
	new (String nom){
		nombre = nom
		habitacionesPermitidas = new ArrayList()
	}
	
	def void ejecutarAccion(){}
	
	def agregarHabitacionPermitida(Integer numeroDeHabitacion){
		
		habitacionesPermitidas.add(numeroDeHabitacion)
	}
	
	def boolean puedeMoverseA(int numeroDeHabitacion){
		
		return habitacionesPermitidas.contains(numeroDeHabitacion)
		
	}
	
	
}