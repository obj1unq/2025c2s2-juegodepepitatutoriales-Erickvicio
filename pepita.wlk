import gameManager.*
import comidas.*
import silvestre.*
import muro.*

object pepita {

	
	var property energia = 500

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}


	// Game
	var property imagenActual 	= "pepita.png"
	var property position 		= game.at(0,3)  
	var prePosition 			= null

	method position(){
		return game.at(self.posX(), self.posY())
	}
	method posX() {
		const posX = position.x().max(0)
		return posX.min(game.width()-1)
	}
	method posY() {
		const posY = position.y().max(0)
		return posY.min(game.height()-1)
	}

	const costoEnergetico = 9

	method moverArriba() {
		self.validarMover()
		prePosition = position
		position = game.at(self.posX(), self.posY()).up(1)
		energia -= costoEnergetico
	}
	method moverAbajo() {
		self.validarMover()
		prePosition = position
		position = game.at(self.posX(), self.posY()).down(1)
		energia -= costoEnergetico
	}
	method moverIzq() {
		self.validarMover()
		prePosition = position
		position = game.at(self.posX(), self.posY()).left(1)
		energia -= costoEnergetico
	}
	method moverDer() {
		self.validarMover()
		prePosition = position
		position = game.at(self.posX(), self.posY()).right(1)
		energia -= costoEnergetico
	}
	method image() { return imagenActual }

	method cambiarAGris() {
		imagenActual = "pepita-gris.png"
	}
	method tieneEnergiaSuficiente() {
		return energia > 0
	}
	method validarMover() {
		if(not self.tieneEnergiaSuficiente()){
			energia = 0
			self.cambiarAGris()
			self.error("No tiene suficiente energia para seguir moviendose")
		}
	}
	method decender() {
		prePosition = position
		position = position.down(1)
	}
	method noPuedeAvanzar() {
		position = prePosition
	}
	method endStage() {
		gameManager.pepitaPerdio()
		self.cambiarAGris()
		energia = 0
	}
	method winStage() {

		imagenActual = "pepita-grande.png"
		energia = 0
		gameManager.pepitaGano()
	}
}

