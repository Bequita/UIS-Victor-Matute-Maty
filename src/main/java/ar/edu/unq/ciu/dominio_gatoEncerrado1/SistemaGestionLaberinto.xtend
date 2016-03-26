package ar.edu.unq.ciu.dominio_gatoEncerrado1

import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class SistemaGestionLaberinto {
	
	val listaLaberintos = new ArrayList();

	def agregarLaberinto(String nombreLab) {
		var nuevoLaberinto = new Laberinto(nombreLab);
		
		listaLaberintos.add(nuevoLaberinto);
	}
	
	def agregarHabitacionALaberinto(String nombreLaberinto, String nombreHabitacion) {
	}
	
}