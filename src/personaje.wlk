import wollok.game.*


object personaje {
	var property position = new Position(x = 3, y = 3)
	var property image = "player_Up.png"
	
	
	
	method irA(nuevaPosicion) {
        position = nuevaPosicion    
	}
	
	method frena(){
		game.say(self,"por aca no")
	}
}

