package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable


@Observable
@Accessors
class CrearLaberintoAppModel {
 	
 	Laberinto nuevoLaberinto
	GatoEncerradoModel sistema
	
	new(GatoEncerradoModel model){
		
		sistema = model
		nuevoLaberinto = new Laberinto
	}
	
	def agregarLaberintoNuevo(){
		
		sistema.agregarLaberinto(nuevoLaberinto)
	}
}
