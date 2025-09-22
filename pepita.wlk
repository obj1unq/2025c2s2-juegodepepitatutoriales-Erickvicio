import silvestre.*

object pepita {

	
	var energia = 500

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
	var property position = game.at(0, 3)

	method image() {
		if(self.estaAtrapada()){
			self.cambiarAGris()
		}
		return imagenActual
	}

	method cambiarAGris() {
		imagenActual = "pepita-gris.png"
	}

	method estaAtrapada() {
		return self.position() == silvestre.position()
	}

	method movimiento(){
		if(keyboard.w()){
			return 1
		}
		else if(keyboard.s()){
			return -1
		}
		else if(keyboard.a()){
			return -1
		}
		else if(keyboard.d()){
			return 1
		}else{
			return 0
		}
	}

	method tieneEnergiaSuficiente() {
		return pepita.energia() > 0
	}

	method mover() {
		const costoEnergetico = 9

		if(self.tieneEnergiaSuficiente()){
			energia -= costoEnergetico
			position = game.at(position.x() + self.movimiento(), position.y()+ self.movimiento())
			
		}
	}


}

