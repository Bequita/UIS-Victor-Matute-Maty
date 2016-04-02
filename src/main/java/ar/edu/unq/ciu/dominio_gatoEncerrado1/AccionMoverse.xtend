package ar.edu.unq.ciu.dominio_gatoEncerrado1
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionMoverse {
	var int numeroDeHabitacion
	
	new(int numHab){
		numeroDeHabitacion = numHab
	}
}