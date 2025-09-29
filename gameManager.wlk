import pepita.*

object paleta {
    const property verde =  "00FF00FF"
    const property rojo =   "FF0000FF"
    const property azul =   "00000FF" 
}

object gameManager {
// Game
	var property position = game.at(5,6)
    var property text = ""
    var property colorAsignado = paleta.azul() 

    method textColor() = colorAsignado 

    method pepitaGano() {
        colorAsignado = paleta.verde()
        self.text("GANAsTE :D")

        game.removeTickEvent("Gravedad")
        game.schedule(2000, {game.stop()})
    }

    method pepitaPerdio() {
        colorAsignado = paleta.rojo()
        self.text("Perdiste :c")

        game.removeTickEvent("Gravedad")
        game.schedule(2000, {game.stop()})
        
    }

    method colisionoCon(obj) {
        
    }
}
