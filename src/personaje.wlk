import wollok.game.*
import wollok.game.*

object personaje {
    var property position = game.at(6, 18)
    var property image = "player_Up.png"
    var property posicionAnterior = game.at(6, 18)

    const posicionesNoPermitidas = [game.at(4, 17), game.at(4, 18),game.at(5, 17),game.at(6, 17),game.at(7, 17),game.at(8, 17),game.at(9, 17),
    	game.at(10, 17),game.at(11, 17),game.at(12, 17),game.at(13, 17),game.at(14, 17),game.at(15, 17),game.at(16, 17),game.at(17, 17),
    	game.at(18, 17),game.at(19, 17),game.at(20, 17),game.at(21, 17),game.at(22, 17),
    	game.at(23, 17),game.at(24, 17),game.at(25, 17),game.at(26, 17),game.at(27, 17),game.at(28, 17)
    ]  // Agrega las posiciones no permitidas

    const equipo = []

    method agregarPokemon(p) {
        equipo.add(p)
    }

    method irA(nuevaPosicion) {
        if (self.puedeMover(nuevaPosicion)) {
            posicionAnterior = position
            position = nuevaPosicion
        } else {
            // No permitimos el movimiento, restauramos la posición anterior
            position = posicionAnterior
        }
    }

    method puedeMover(nuevaPosicion) {
        if (posicionesNoPermitidas.contains(nuevaPosicion)) {
            return false
        }
        
        // Verificar si las coordenadas en las cuatro direcciones están bloqueadas
        var arriba = game.at(position.x(), position.y() - 1)
        var abajo = game.at(position.x(), position.y() + 1)
        var izquierda = game.at(position.x() - 1, position.y())
        var derecha = game.at(position.x() + 1, position.y())
        
        return !posicionesNoPermitidas.contains(arriba) and 
               !posicionesNoPermitidas.contains(abajo) and 
               !posicionesNoPermitidas.contains(izquierda) and 
               !posicionesNoPermitidas.contains(derecha)
    }
}
