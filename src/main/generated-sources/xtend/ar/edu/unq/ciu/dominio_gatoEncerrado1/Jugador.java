package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion;
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Inventario;
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Item;

@SuppressWarnings("all")
public class Jugador {
  private String nombreJugador;
  
  private Inventario inventario;
  
  public Jugador(final String nombre) {
    this.nombreJugador = nombre;
  }
  
  /**
   * Agrega un item al inventario del jugador y lo elimina de la habitacion
   * correspondiente
   * 
   * @param hab: La habitacion de donde se agarra el item.
   * @param item: El item que se agrega al inventario
   */
  public void agarrarItem(final Habitacion hab, final Item item) {
    hab.descartarItem(item);
    this.inventario.agregarItemDelInventario(item);
  }
}
