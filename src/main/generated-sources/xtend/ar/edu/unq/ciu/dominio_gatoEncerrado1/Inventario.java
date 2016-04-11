package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.Item;
import java.util.ArrayList;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;

@Accessors
@SuppressWarnings("all")
public class Inventario {
  private int cantidadMaximaDeItems;
  
  private ArrayList<Item> items;
  
  public Inventario(final int maximo) {
    this.cantidadMaximaDeItems = maximo;
    ArrayList<Item> _arrayList = new ArrayList<Item>();
    this.items = _arrayList;
  }
  
  /**
   * Retorna true si el inventario posee la cantidad maxima permitida de items.
   */
  public boolean inventarioLleno() {
    int _size = this.items.size();
    return (_size == this.cantidadMaximaDeItems);
  }
  
  public boolean agregarItemDelInventario(final Item item) {
    return this.items.add(item);
  }
  
  @Pure
  public int getCantidadMaximaDeItems() {
    return this.cantidadMaximaDeItems;
  }
  
  public void setCantidadMaximaDeItems(final int cantidadMaximaDeItems) {
    this.cantidadMaximaDeItems = cantidadMaximaDeItems;
  }
  
  @Pure
  public ArrayList<Item> getItems() {
    return this.items;
  }
  
  public void setItems(final ArrayList<Item> items) {
    this.items = items;
  }
}
