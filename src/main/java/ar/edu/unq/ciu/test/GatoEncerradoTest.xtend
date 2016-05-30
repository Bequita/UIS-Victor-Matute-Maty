package ar.edu.unq.ciu.test

import org.junit.Before
import org.junit.Test
import static org.junit.Assert.*
import org.junit.After
import ar.edu.unq.ciu.dominio_gatoEncerrado1.GatoEncerradoModel

class GatoEncerradoTest {
	
	var GatoEncerradoModel sistema
	
	@After
	def void reiniciar(){
		sistema.seleccionarLaberinto("La Cueva")
	}
	
	@Before
	def void setUp(){
		sistema = new GatoEncerradoModel()
	}
	
	@Test
	def void  iniciarLaberintoYCambiarDeLaberinto(){
		
		assertEquals(sistema.laberintoActual.nombreLaberinto,"La Cueva")
		sistema.seleccionarLaberinto("La Mansion")
		assertEquals(sistema.laberintoActual.nombreLaberinto,"La Mansion")
	}
	
	@Test
	def void  cambiarDeHabitacion(){
		
		val jugador = sistema.jugadorActual
		val habitacion = sistema.habitacionActual
		val laberinto = sistema.laberintoActual
		
		assertEquals(sistema.laberintoActual.habitacionInicial.nombreHabitacion,sistema.habitacionActual.nombreHabitacion)
		var accionDeMoverse = habitacion.listaAcciones.get(1)
		accionDeMoverse.ejecutar(sistema,jugador)
		val nuevaHabitacionActual = sistema.laberintoActual.buscarHabitacionPorId(2)
		assertEquals(nuevaHabitacionActual.nombreHabitacion,sistema.habitacionActual.nombreHabitacion)
		
	}
	
	@Test
	def void  agarrarUnItem(){
		
		val jugador = sistema.jugadorActual
		val habitacion = sistema.habitacionActual
		
		assertEquals(jugador.inventario.items.size,1)
		habitacion.listaAcciones.get(2).ejecutar(sistema,jugador)
		assertEquals(jugador.inventario.items.size,2)
	}
	
	@Test
	def void  usarUnItem(){
		
		val jugador = sistema.jugadorActual
		val habitacion = sistema.habitacionActual
		val laberinto = sistema.laberintoActual
		
		assertEquals(sistema.laberintoActual.habitacionInicial.nombreHabitacion,sistema.habitacionActual.nombreHabitacion)
		var accionDeUsarItem = habitacion.listaAcciones.get(0)
		accionDeUsarItem.ejecutar(sistema,jugador)
		val nuevaHabitacionActual = sistema.laberintoActual.buscarHabitacionPorId(3)
		assertEquals(nuevaHabitacionActual.nombreHabitacion,sistema.habitacionActual.nombreHabitacion)
	}
	
}