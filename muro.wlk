object muro {
// Game
	var property position = game.center() 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

object muro1 {
// Game
	var property position = game.at(6,5) 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

object muro2 {
// Game
	var property position = game.at(4,5) 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

