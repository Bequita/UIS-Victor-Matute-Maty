package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionDeMoverse extends Accion{
	
	var int numeroDeHabitacion
		
	new(String nombre, int numeroHab) {
		
		super(nombre)
		numeroDeHabitacion = numeroHab
	}
	
	

}