package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Pure;
import org.uqbar.commons.utils.Observable;

@Observable
@Accessors
@SuppressWarnings("all")
public class Laberinto {
  private String nombreLaberinto;
  
  private List<Habitacion> listaHabitaciones;
  
  public Laberinto() {
    ArrayList<Habitacion> _newArrayList = CollectionLiterals.<Habitacion>newArrayList();
    this.listaHabitaciones = _newArrayList;
  }
  
  public Laberinto(final String nombreLab) {
    this.nombreLaberinto = nombreLab;
    ArrayList<Habitacion> _arrayList = new ArrayList<Habitacion>();
    this.listaHabitaciones = _arrayList;
  }
  
  public void agregarHabitacion(final Habitacion habitacionNueva) {
    this.listaHabitaciones.add(habitacionNueva);
  }
  
  public Habitacion buscarHabitacion(final int numeroHabitacion) {
    return this.listaHabitaciones.get(numeroHabitacion);
  }
  
  @Pure
  public String getNombreLaberinto() {
    return this.nombreLaberinto;
  }
  
  public void setNombreLaberinto(final String nombreLaberinto) {
    this.nombreLaberinto = nombreLaberinto;
  }
  
  @Pure
  public List<Habitacion> getListaHabitaciones() {
    return this.listaHabitaciones;
  }
  
  public void setListaHabitaciones(final List<Habitacion> listaHabitaciones) {
    this.listaHabitaciones = listaHabitaciones;
  }
}
