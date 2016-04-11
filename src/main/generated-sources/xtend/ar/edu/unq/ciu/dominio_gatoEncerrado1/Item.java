package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import java.util.ArrayList;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;

@Accessors
@SuppressWarnings("all")
public class Item {
  private String nombre;
  
  private ArrayList<Integer> habitacionesPermitidas;
  
  public Item() {
  }
  
  public Item(final String nom) {
    this.nombre = nom;
    ArrayList<Integer> _arrayList = new ArrayList<Integer>();
    this.habitacionesPermitidas = _arrayList;
  }
  
  public void ejecutarAccion() {
  }
  
  public boolean agregarHabitacionPermitida(final Integer numeroDeHabitacion) {
    return this.habitacionesPermitidas.add(numeroDeHabitacion);
  }
  
  public boolean puedeMoverseA(final int numeroDeHabitacion) {
    return this.habitacionesPermitidas.contains(Integer.valueOf(numeroDeHabitacion));
  }
  
  @Pure
  public String getNombre() {
    return this.nombre;
  }
  
  public void setNombre(final String nombre) {
    this.nombre = nombre;
  }
  
  @Pure
  public ArrayList<Integer> getHabitacionesPermitidas() {
    return this.habitacionesPermitidas;
  }
  
  public void setHabitacionesPermitidas(final ArrayList<Integer> habitacionesPermitidas) {
    this.habitacionesPermitidas = habitacionesPermitidas;
  }
}
