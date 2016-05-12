package ar.edu.unq.ciu.dominio_gatoEncerrado1

class Jugador {
	var String idUsuario
	var Inventario inventario 
	
	new(String id , Inventario inv){
		idUsuario = id
		inventario = inv
	}
}