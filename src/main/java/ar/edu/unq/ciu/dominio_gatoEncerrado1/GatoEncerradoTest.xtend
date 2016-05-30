package ar.edu.unq.ciu.dominio_gatoEncerrado1

import org.junit.Before
import org.junit.Test
import static org.junit.Assert.*
import org.junit.After

class GatoEncerradoTest {
	
	var GatoEncerradoModel sistema
	
	@After
	def void reiniciar(){
		sistema.seleccionarLaberinto("Lab1")
	}
	
	@Before
	def void setUp(){
		sistema = new GatoEncerradoModel()
	}
	
	@Test
	def void  iniciarLaberintoYCambiarDeLaberinto(){
		
		assertEquals(sistema.laberintoActual.nombreLaberinto,"Lab1")
		sistema.seleccionarLaberinto("Lab2")
		assertEquals(sistema.laberintoActual.nombreLaberinto,"Lab2")
	}
	
	@Test
	def void  cambiarDeHabitacion(){
		
		val jugador = sistema.jugadorActual
		val habitacion = sistema.habitacionActual
		val laberinto = sistema.laberintoActual
		
		assertEquals(sistema.laberintoActual.habitacionInicial.nombreHabitacion,sistema.habitacionActual.nombreHabitacion)
		habitacion.listaAcciones.get(1).ejecutar(sistema,jugador)
		val nuevaHabitacionActual = sistema.laberintoActual.buscarHabitacionPorId(3)
		assertEquals(nuevaHabitacionActual.nombreHabitacion,sistema.habitacionActual.nombreHabitacion)
		
	}
	
	
	
}