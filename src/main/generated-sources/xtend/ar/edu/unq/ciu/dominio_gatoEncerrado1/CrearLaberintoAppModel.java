package ar.edu.unq.ciu.dominio_gatoEncerrado1;

import ar.edu.unq.ciu.dominio_gatoEncerrado1.GatoEncerradoModel;
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Laberinto;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;
import org.uqbar.commons.utils.Observable;

@Observable
@Accessors
@SuppressWarnings("all")
public class CrearLaberintoAppModel {
  private Laberinto nuevoLaberinto;
  
  private GatoEncerradoModel sistema;
  
  public CrearLaberintoAppModel(final GatoEncerradoModel model) {
    this.sistema = model;
    Laberinto _laberinto = new Laberinto();
    this.nuevoLaberinto = _laberinto;
  }
  
  public boolean agregarLaberintoNuevo() {
    return this.sistema.agregarLaberinto(this.nuevoLaberinto);
  }
  
  @Pure
  public Laberinto getNuevoLaberinto() {
    return this.nuevoLaberinto;
  }
  
  public void setNuevoLaberinto(final Laberinto nuevoLaberinto) {
    this.nuevoLaberinto = nuevoLaberinto;
  }
  
  @Pure
  public GatoEncerradoModel getSistema() {
    return this.sistema;
  }
  
  public void setSistema(final GatoEncerradoModel sistema) {
    this.sistema = sistema;
  }
}
