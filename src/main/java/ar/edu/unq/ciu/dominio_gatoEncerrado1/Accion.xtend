package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Accion {
	
	Habitacion habitacion
	String accion
	
	new(Habitacion hab) {
		habitacion = hab
	}
	
	new() {
	}

}