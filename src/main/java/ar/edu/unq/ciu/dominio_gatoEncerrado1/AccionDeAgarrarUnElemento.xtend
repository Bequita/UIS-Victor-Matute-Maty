package ar.edu.unq.ciu.dominio_gatoEncerrado1

class AccionDeAgarrarUnElemento extends Accion {
	
	
	new(String nombre,String nombreItem,Habitacion habitacion){
		
		super(nombre)
		habitacion.agregarItem(nombreItem)
	}
	
	
}