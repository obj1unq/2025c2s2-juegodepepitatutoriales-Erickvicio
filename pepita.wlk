import silvestre.*

object pepita {

	
	var energia = 100

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	// Game
	var property imagenActual = "pepita.png" 
	var property position = game.origin() 

	method image() {
		return imagenActual
	}

	method cambiarAGris() {
		imagenActual = "pepita-gris.png"
	}

	method esAtrapada() {
		self.cambiarAGris()
	}
}

