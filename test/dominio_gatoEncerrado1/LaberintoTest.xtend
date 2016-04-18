package dominio_gatoEncerrado1

import org.junit.Before
import org.junit.Test
import static org.junit.Assert.*
import ar.edu.unq.ciu.dominio_gatoEncerrado1.GatoEncerradoModel
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Habitacion
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Laberinto
import ar.edu.unq.ciu.dominio_gatoEncerrado1.Accion
import ar.edu.unq.ciu.dominio_gatoEncerrado1.AccionDeMoverse

class LaberintoTest {
	//var Laberinto labNuevo
	var GatoEncerradoModel sistema
	var Habitacion hab1
	var Habitacion hab2
	var Accion acc
	
	@Before
	def void setUp(){
		//labNuevo = new Laberinto("LabNuevo")
		sistema = new GatoEncerradoModel()
		hab1 = new Habitacion("hab1")
		hab2 = new Habitacion("hab2")
		acc = new AccionDeMoverse(hab2)
	}
	
	@Test
	def agregarUnLaberintoAlSistema(){
		assertFalse(sistema.hayLaberintosConElMismoNombre("LabNuevo"))
		sistema.crearLaberinto("LabNuevo")
		assertTrue(sistema.hayLaberintosConElMismoNombre("LabNuevo"))
	}
	
	@Test
	def agregarAccionAUnLaberinto(){
		sistema.crearLaberinto("LabNuevo")
		sistema.agregarHabitacionALaberinto("LabNuevo",hab1)
		sistema.agregarHabitacionALaberinto("LabNuevo",hab2)
		assertEquals(hab1.listaAcciones.size,0)
		sistema.agregarAccionAHabitacionDeLaberinto("LabNuevo","hab1",acc)
		assertEquals(hab1.buscarAccion(acc).accion,acc.accion)
		
		
	}
	
	
}