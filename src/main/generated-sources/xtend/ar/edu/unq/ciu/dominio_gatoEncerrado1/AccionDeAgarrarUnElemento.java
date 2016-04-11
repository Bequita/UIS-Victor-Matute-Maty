package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.Accion;
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion;

@SuppressWarnings("all")
public class AccionDeAgarrarUnElemento extends Accion {
  public AccionDeAgarrarUnElemento(final String nombre, final String nombreItem, final Habitacion habitacion) {
    super(nombre);
    habitacion.agregarItem(nombreItem);
  }
}
