import wollok.game.*


object personaje {
	var property position = game.at(3,3)
	var property image = "player_Up.png"
	
	
	
	method irA(nuevaPosicion) {
        position = nuevaPosicion    
	}
	method hablar(){
		position = position.right(3)
		game.say(self,"no podes pasar")
	}
	
}

