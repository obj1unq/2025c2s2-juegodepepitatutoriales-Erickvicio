import silvestre.*
import muro.*

object pepita {

	
	var energia = 500

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	// Game
	var property imagenActual = "pepita.png"
	var property position = game.at(0,3)  
	var prePosition = null

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
		position = position.up(1)
		energia -= costoEnergetico
	}
	method moverAbajo() {
		self.validarMover()
		prePosition = position
		position = position.down(1)
		energia -= costoEnergetico
	}
	method moverIzq() {
		self.validarMover()
		prePosition = position
		position = position.left(1)
		energia -= costoEnergetico
	}
	method moverDer() {
		self.validarMover()
		prePosition = position
		position = position.right(1)
		energia -= costoEnergetico
	}
	method image() {
		return imagenActual
	}
	method cambiarAGris() {
		imagenActual = "pepita-gris.png"
	}
	
	method tieneEnergiaSuficiente() {
		return energia > 0
	}
	method validarMover() {
		if(not self.tieneEnergiaSuficiente()){
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
		self.cambiarAGris()
		energia = 0
	}

}

