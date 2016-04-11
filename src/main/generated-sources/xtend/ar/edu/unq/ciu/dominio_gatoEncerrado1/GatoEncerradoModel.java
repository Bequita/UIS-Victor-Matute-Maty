package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion;
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Laberinto;
import com.google.common.base.Objects;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Pure;
import org.uqbar.commons.utils.Observable;

@Observable
@Accessors
@SuppressWarnings("all")
public class GatoEncerradoModel {
  private List<Laberinto> listaLaberintos;
  
  public GatoEncerradoModel() {
    ArrayList<Laberinto> _newArrayList = CollectionLiterals.<Laberinto>newArrayList();
    this.listaLaberintos = _newArrayList;
  }
  
  /**
   * Crea un laberinto sin habitaciones y lo guarda en ListaLaberintos
   */
  public boolean crearLaberinto(final String nomLab) {
    boolean _xblockexpression = false;
    {
      Laberinto laberinto = new Laberinto(nomLab);
      _xblockexpression = this.agregarLaberinto(laberinto);
    }
    return _xblockexpression;
  }
  
  /**
   * Agrega una habitacion al laberinto pasado por parametro
   */
  public void agregarHabitacionALaberinto(final String nomLab, final Habitacion hab) {
    Laberinto lab = this.buscarLaberinto(nomLab);
    List<Habitacion> _listaHabitaciones = lab.getListaHabitaciones();
    int _size = _listaHabitaciones.size();
    hab.setId(_size);
    lab.agregarHabitacion(hab);
  }
  
  /**
   * Elimina una habitacion al laberinto pasado por parametro
   */
  public Habitacion eliminarHabitacionDelLaberinto(final String nomLab, final int numHab) {
    Habitacion _xblockexpression = null;
    {
      Laberinto lab = this.buscarLaberinto(nomLab);
      List<Habitacion> _listaHabitaciones = lab.getListaHabitaciones();
      _xblockexpression = _listaHabitaciones.remove(numHab);
    }
    return _xblockexpression;
  }
  
  /**
   * Elimina una laberinto
   */
  public boolean eliminarLaberinto(final String nomLab) {
    Laberinto _buscarLaberinto = this.buscarLaberinto(nomLab);
    return this.listaLaberintos.remove(_buscarLaberinto);
  }
  
  public Laberinto buscarLaberinto(final String nomLab) {
    final Function1<Laberinto, Boolean> _function = new Function1<Laberinto, Boolean>() {
      public Boolean apply(final Laberinto laberinto) {
        String _nombreLaberinto = laberinto.getNombreLaberinto();
        return Boolean.valueOf(Objects.equal(_nombreLaberinto, nomLab));
      }
    };
    return IterableExtensions.<Laberinto>findFirst(this.listaLaberintos, _function);
  }
  
  public boolean agregarLaberinto(final Laberinto lab) {
    return this.listaLaberintos.add(lab);
  }
  
  public Laberinto elegirLaberinto(final String nombreLab) {
    return this.buscarLaberinto(nombreLab);
  }
  
  @Pure
  public List<Laberinto> getListaLaberintos() {
    return this.listaLaberintos;
  }
  
  public void setListaLaberintos(final List<Laberinto> listaLaberintos) {
    this.listaLaberintos = listaLaberintos;
  }
}
