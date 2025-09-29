object muro {
// Game
	var property position = game.at(7,5) 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

object muro1 {
// Game
	var property position = game.at(8,5) 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

object muro2 {
// Game
	var property position = game.at(9,5) 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

object muro3 {
// Game
	var property position = game.at(0,8) 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

object muro4 {
// Game
	var property position = game.at(1,8) 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}