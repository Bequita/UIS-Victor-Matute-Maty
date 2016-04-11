package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.Accion;
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Item;
import ar.edu.unq.ciu.dominio_gatoEncerrado1.TipoHabitacion;
import com.google.common.base.Objects;
import java.util.ArrayList;
import java.util.Observable;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;

@Accessors
@SuppressWarnings("all")
public class Habitacion extends Observable {
  private String nombre;
  
  private int id;
  
  private ArrayList<Item> listaItems;
  
  private TipoHabitacion tipoHabitacion;
  
  private ArrayList<Accion> listaDeMovimientos;
  
  public Habitacion(final String nom) {
    this.nombre = nom;
    this.id = 0;
    ArrayList<Item> _arrayList = new ArrayList<Item>();
    this.listaItems = _arrayList;
    ArrayList<Accion> _arrayList_1 = new ArrayList<Accion>();
    this.listaDeMovimientos = _arrayList_1;
    this.tipoHabitacion = TipoHabitacion.COMUN;
  }
  
  public Object movimientosPosibles(final int numHab) {
    return null;
  }
  
  public void moverseA(final int numeroHabitacion) {
    this.setChanged();
    this.notifyObservers(Integer.valueOf(numeroHabitacion));
  }
  
  public void agregarItem(final String nuevoItem) {
    Item item = new Item(nuevoItem);
    this.listaItems.add(item);
  }
  
  public boolean tieneElMismoNombre(final String nombreHabitacion) {
    return Objects.equal(this.nombre, nombreHabitacion);
  }
  
  public boolean descartarItem(final Item item) {
    return this.listaItems.remove(item);
  }
  
  public TipoHabitacion marcarComoInicial() {
    return this.tipoHabitacion = TipoHabitacion.INICIAL;
  }
  
  public TipoHabitacion marcarComoFinal() {
    return this.tipoHabitacion = TipoHabitacion.FINAL;
  }
  
  @Pure
  public String getNombre() {
    return this.nombre;
  }
  
  public void setNombre(final String nombre) {
    this.nombre = nombre;
  }
  
  @Pure
  public int getId() {
    return this.id;
  }
  
  public void setId(final int id) {
    this.id = id;
  }
  
  @Pure
  public ArrayList<Item> getListaItems() {
    return this.listaItems;
  }
  
  public void setListaItems(final ArrayList<Item> listaItems) {
    this.listaItems = listaItems;
  }
  
  @Pure
  public TipoHabitacion getTipoHabitacion() {
    return this.tipoHabitacion;
  }
  
  public void setTipoHabitacion(final TipoHabitacion tipoHabitacion) {
    this.tipoHabitacion = tipoHabitacion;
  }
  
  @Pure
  public ArrayList<Accion> getListaDeMovimientos() {
    return this.listaDeMovimientos;
  }
  
  public void setListaDeMovimientos(final ArrayList<Accion> listaDeMovimientos) {
    this.listaDeMovimientos = listaDeMovimientos;
  }
}
