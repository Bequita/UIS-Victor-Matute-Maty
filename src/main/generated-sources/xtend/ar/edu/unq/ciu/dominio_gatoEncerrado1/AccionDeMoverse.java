package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.Accion;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;

@Accessors
@SuppressWarnings("all")
public class AccionDeMoverse extends Accion {
  private int numeroDeHabitacion;
  
  public AccionDeMoverse(final String nombre, final int numeroHab) {
    super(nombre);
    this.numeroDeHabitacion = numeroHab;
  }
  
  @Pure
  public int getNumeroDeHabitacion() {
    return this.numeroDeHabitacion;
  }
  
  public void setNumeroDeHabitacion(final int numeroDeHabitacion) {
    this.numeroDeHabitacion = numeroDeHabitacion;
  }
}
