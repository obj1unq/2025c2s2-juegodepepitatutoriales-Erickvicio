import pepita.*
object silvestre {

	// Game
	var property position = game.origin()
	method image() {return "silvestre.png"}

   method position() {
        return game.at(pepita.position().x(),0)
   }

   method atraparA(unAve) {
        unAve.esAtrapada()
   }
    
}