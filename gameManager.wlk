import pepita.*

object paleta {
    const property verde =  "00FF00FF"
    const property rojo =   "FF0000FF"
    const property blanco =   "00000FF" 
}

object gameManager {
// Game
	var property position = game.center()
    var property mensaje =  ""
    var property colorAsignado = paleta.blanco() 

    method text() {
        return mensaje
    }

    method energiaDePepita() {
        return "" + pepita.energia()
    }

    method textColor() = colorAsignado 


    method pepitaGano() {
        colorAsignado = paleta.verde()
        mensaje = "GANAsTE :D"

        game.removeTickEvent("Gravedad")
        game.schedule(2000, {game.stop()})
    }

    method pepitaPerdio() {
        colorAsignado = paleta.rojo()
        mensaje = "Perdiste :c"

        game.removeTickEvent("Gravedad")
        game.schedule(2000, {game.stop()})
        
    }
    method colisionoCon(obj) {}
}


object uiEnergiaDePepita {
	var property position = game.at(5,9)
    method text() {return "La energia de pepita es "+ pepita.energia() }
    method textColor() = paleta.blanco()
    method colisionoCon(obj) {} 
}