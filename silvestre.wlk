import pepita.*
object silvestre {

     var property presa = pepita 
	// Game
	var property position = game.at(3,0)
	method image() {return "silvestre.png"}

   method position() {
      const posX = pepita.position().x().max(3)
      return game.at(posX, 0)
   }
    
}