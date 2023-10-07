import personaje.*
import wollok.game.*
import edificios.*


object config {
	
	method iniciar(){
		self.configurarTeclas()
		
		game.addVisualCharacter(personaje)
		
		//var gimnasio1 = new Gimnasio1()
		game.addVisual(gimnasio1)
		
		game.addVisual(casa)
		
		game.addVisual(mercado)
		game.addVisual(gimnasio2)
		
		
		
		game.whenCollideDo(casa, { x => x.hablar()})

		
		
	}	
	
	method configurarTeclas(){
		keyboard.left().onPressDo({personaje.irA(personaje.position().left(1))})		
		keyboard.left().onPressDo({personaje.image("player_Left.png")})		
		
		
		keyboard.right().onPressDo({personaje.irA(personaje.position().right(1))})
		keyboard.right().onPressDo({personaje.image("player_Right.png")})		


		keyboard.up().onPressDo({personaje.irA(personaje.position().up(1))})
		keyboard.up().onPressDo({personaje.image("player_Up.png")})		

	
		keyboard.down().onPressDo({personaje.irA(personaje.position().down(1))})
		keyboard.down().onPressDo({personaje.image("player_Down.png")})		


	}
	
	
}