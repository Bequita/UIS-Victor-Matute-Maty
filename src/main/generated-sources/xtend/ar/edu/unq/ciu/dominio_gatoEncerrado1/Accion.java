package ar.edu.unq.ciu.dominio_gatoEncerrado1;

@SuppressWarnings("all")
public abstract class Accion {
  private String descripcion;
  
  public Accion(final String nombre) {
    this.descripcion = nombre;
  }
}
