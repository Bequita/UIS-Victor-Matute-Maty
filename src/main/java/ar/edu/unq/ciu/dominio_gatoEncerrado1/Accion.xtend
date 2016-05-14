package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Accion {
	
	Integer id
	String nombreAccion
	Habitacion habitacion
	String accion
	
	new(Habitacion hab) {
		habitacion = hab
	}
	
	new(Integer idAcc, String nombre , Habitacion hab) {
		id = idAcc
		nombreAccion = nombre
		habitacion = hab
	}
	
	new() {
	}
	
	def String ejecutar(Laberinto lab){
		
	}

}