import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
		//madurez += 1
	}

	// Game
	var property position = game.at(8,8) 
	method image() {return "manzana.png"}


}

object alpiste {

	method energiaQueOtorga() {
		return 20
	} 

	// Game
	var property position = game.at(9, 9) 
	method image() {return "alpiste.png"}

}

