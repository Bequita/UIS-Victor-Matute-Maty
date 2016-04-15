package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class AccionDeMoverseModel {
	
	var Laberinto laberinto
	var Habitacion habitacion
	var Habitacion habitacionAMoverse
	
	new(Habitacion hab, Laberinto lab) {
		laberinto = lab
		habitacion = hab
	}
	
	def agregarAccionDeMoverse() {
		var accionDeMoverse = new AccionDeMoverse(habitacionAMoverse)
		habitacion.listaAcciones.add(accionDeMoverse)
	}
}