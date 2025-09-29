object muro {
// Game
	var property position = game.center() 
	method image() {return "muro.png"}

	method colisionoCon(obj) {
		obj.noPuedeAvanzar()
	}
}

