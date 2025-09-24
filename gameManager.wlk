
object paleta {
    const property verde =  "00FF00FF"
    const property rojo =   "FF0000FF"
    const property azul =   "00000FF" 
}

object gameManager {
// Game
	var property position = game.center()
    var property text = ""
    var property colorAsignado = paleta.azul() 

    method textColor() = colorAsignado 

    method winStage() {
        colorAsignado = paleta.azul()
        self.text("GANAsTE :D")
    }

    method loseStage() {
        colorAsignado = paleta.rojo()
        self.text("Perdiste :c")
    }
}
