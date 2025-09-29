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
	var property position = game.at(9,6) 
	method image() {return "manzana.png"}

	method colisionoCon(obj) {
		obj.comer(self)
	}
}

object alpiste {

	method energiaQueOtorga() {
		return 20
	} 

	// Game
	var property position = game.at(8, 6) 
	method image() {return "alpiste.png"}

	method colisionoCon(obj) {
		obj.comer(self)
	}

}

