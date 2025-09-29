object nido {
// Game
	var property position = game.at(0, 9) 
	method image() {return "nido.png"}

	method colisionoCon(obj) {
		obj.winStage()
	}
 
}