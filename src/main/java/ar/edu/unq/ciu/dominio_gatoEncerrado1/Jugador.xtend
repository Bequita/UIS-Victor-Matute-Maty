package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList

@Accessors
class Jugador {
	var String idUsuario
	var List<String> laberintosJugados = new ArrayList
	
	new(String id){
		idUsuario = id
	}
}