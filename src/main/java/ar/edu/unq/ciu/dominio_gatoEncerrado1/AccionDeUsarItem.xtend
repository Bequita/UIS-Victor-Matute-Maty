package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class AccionDeUsarItem extends Accion{
	
	new(Habitacion habitacion){
		super(habitacion)
	}
	
	new(Integer id,String nombre,Habitacion habitacion){
		super(id,nombre,habitacion)
	}
}