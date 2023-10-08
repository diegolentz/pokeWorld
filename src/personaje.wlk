import wollok.game.*

object personaje {
    var property position = game.at(6, 19)
    var property image = "player_Up.png"
    var property posicionAnterior = game.at(6, 19)

    const posicionesNoPermitidas = [game.at(4, 17), game.at(4, 18),game.at(5, 17),game.at(6, 17),game.at(7, 17),game.at(8, 17),game.at(9, 17),
    	game.at(10, 17),game.at(11, 17),game.at(12, 17),game.at(13, 17),game.at(14, 17),game.at(15, 17),game.at(16, 17),game.at(17, 17),
    	game.at(18, 17),game.at(19, 17),game.at(20, 17),game.at(21, 17),game.at(22, 17),game.at(23, 17),game.at(24, 17),game.at(25, 17),
    	game.at(26, 17),game.at(27, 17),game.at(28, 17),game.at(28, 16),game.at(28, 15),game.at(28, 14),game.at(27, 14),game.at(27, 13),
    	game.at(26, 13),game.at(25, 13),game.at(24, 13),game.at(23, 13),game.at(22, 13),game.at(21, 13),game.at(20, 13),game.at(19, 13),
    	game.at(18, 13),game.at(17, 13),game.at(16, 13),game.at(15, 13),game.at(14, 13),game.at(13, 13),game.at(12, 13),game.at(11, 13),
    	game.at(10, 13),game.at(9, 13),game.at(8, 13),game.at(8, 12),game.at(8, 11),game.at(8, 10),game.at(8, 9),game.at(8, 8),game.at(8, 7),
    	game.at(8, 6),game.at(8, 5),game.at(8, 4),game.at(9, 4),game.at(10, 4),game.at(11, 4),game.at(12, 4),game.at(13, 4),game.at(14, 4),
    	game.at(15, 4),game.at(16, 4),game.at(17, 4),game.at(18, 4),game.at(19, 4),game.at(20, 4),game.at(21, 4),game.at(22, 4),game.at(23, 4),
    	game.at(24, 4),game.at(25, 4),game.at(26, 4),game.at(27, 4),game.at(28, 4),game.at(29, 4),game.at(30, 4),game.at(31, 4),game.at(32, 4),
    	game.at(33, 4),game.at(34, 4),game.at(35, 4),game.at(36, 4),game.at(37, 4),game.at(38, 4),game.at(39, 4),game.at(40, 4),game.at(41, 4),
    	game.at(42, 4),game.at(43, 4),game.at(44, 4),game.at(45, 4),game.at(46, 4),game.at(47, 4),game.at(48, 4),game.at(49, 4),game.at(50, 4),
    	game.at(51, 4),game.at(51, 5),game.at(51, 6),game.at(51, 7),game.at(51, 8),game.at(51, 9),game.at(51, 10),game.at(51, 11),
    	game.at(51, 12),game.at(51, 13),game.at(51, 14),game.at(51, 15),game.at(51, 16),game.at(51, 17),game.at(51, 18),game.at(51, 19),
    	game.at(51, 20),game.at(51, 21),game.at(51, 22),game.at(51, 23),game.at(51, 24),game.at(51, 25),game.at(51, 26),game.at(51, 27),
    	game.at(51, 28),game.at(51, 29),game.at(51, 30),game.at(51, 31),game.at(51, 32),game.at(51, 33),game.at(51, 34),game.at(51, 35),
    	game.at(51, 36),game.at(51, 37),game.at(51, 38),game.at(51, 39),game.at(51, 40),game.at(51, 41),game.at(51, 42),game.at(51, 43),
    	game.at(51, 44),game.at(51, 45),game.at(51, 46),game.at(51, 47),game.at(51, 48),game.at(51, 49),game.at(51, 50),game.at(51, 51),
    	game.at(51, 52),game.at(51, 53),game.at(51, 54),game.at(51, 55),game.at(51, 56),
    	game.at(50, 56),game.at(49, 56),game.at(48, 56),game.at(47, 56),game.at(46, 56),game.at(45, 56),game.at(44, 56),game.at(43, 56),
    	game.at(42, 56),game.at(41, 56),game.at(40, 56),game.at(39, 56),game.at(38, 56),game.at(37, 56),game.at(36, 56),game.at(35, 56),
    	game.at(34, 56),game.at(33, 56),game.at(32, 56),game.at(31, 56),game.at(30, 56),game.at(29, 56),game.at(28, 56),game.at(27, 56),
    	game.at(26, 56),game.at(25, 56),game.at(24, 56),game.at(23, 56),game.at(22, 56),game.at(21, 56),game.at(20, 56),game.at(19, 56),
    	game.at(18, 56),game.at(17, 56),game.at(16, 56),game.at(15, 56),game.at(14, 56),game.at(13, 56),game.at(12, 56),
    	game.at(12, 55),game.at(12, 54),game.at(12, 53),game.at(12, 52),game.at(12, 51),game.at(12, 50),
    	game.at(11, 50),game.at(10, 50),game.at(9, 50),game.at(8, 50),game.at(7, 50),game.at(6, 50),game.at(5, 50),game.at(4, 50),
    	game.at(3, 50),game.at(3, 49),game.at(3, 48),game.at(3, 47),game.at(3, 46),game.at(3, 45),game.at(3, 44),game.at(3, 43),game.at(3, 42),
    	game.at(3, 41),game.at(3, 40),game.at(3, 39),game.at(3, 38),game.at(3, 37),game.at(3, 36),game.at(3, 35),game.at(3, 34),game.at(3, 33),
    	game.at(3, 32),game.at(3, 31),game.at(3, 30),game.at(3, 29),
    	game.at(4, 29),game.at(5, 29),game.at(6, 29),game.at(7, 29),game.at(8, 29),game.at(9, 29),game.at(10, 29),game.at(11, 29),game.at(12, 29),
    	game.at(13, 29),game.at(14, 29),game.at(15, 29),game.at(16, 29),game.at(17, 29),game.at(18, 29),game.at(19, 29),game.at(20, 29),
    	game.at(21, 29),game.at(22, 29),game.at(23, 29),game.at(24, 29),game.at(25, 29),game.at(26, 29),game.at(27, 29),game.at(28, 29),
    	game.at(29, 29),game.at(30, 29),game.at(31, 29),game.at(32, 29),game.at(33, 29),game.at(34, 29),game.at(35, 29),
    	game.at(35, 30),game.at(35, 31),game.at(35, 32),game.at(35, 33),game.at(35, 34),game.at(35, 35),game.at(35, 36),game.at(35, 37),
    	game.at(35, 38),game.at(35, 39),game.at(35, 40),game.at(35, 41),game.at(35, 42),
    	game.at(36, 42),game.at(37, 42),game.at(38, 42),game.at(39, 42),game.at(40, 42),
    	game.at(40, 41),game.at(40, 40),game.at(40, 39),game.at(40, 38),game.at(40, 37),game.at(40, 36),game.at(40, 35),game.at(40, 34),
    	game.at(40, 33),game.at(40, 32),game.at(40, 31),game.at(40, 30),game.at(40, 29),game.at(40, 28),game.at(40, 27),game.at(40, 26),
 		game.at(39, 26),game.at(38, 26),game.at(37, 26),game.at(36, 26),game.at(35, 26),game.at(34, 26),game.at(33, 26),game.at(32, 26),
 		game.at(31, 26),game.at(30, 26),game.at(29, 26),game.at(28, 26),game.at(27, 26),game.at(26, 26),game.at(25, 26),game.at(24, 26),
 		game.at(23, 26),game.at(22, 26),game.at(21, 26), game.at(20, 26),game.at(19, 26),game.at(18, 26),game.at(17, 26),  	
    	game.at(16, 26),game.at(15, 26),game.at(14, 26),game.at(13, 26),game.at(12, 26),game.at(11, 26),game.at(10, 26),game.at(9, 26),
    	game.at(8, 26),game.at(7, 26),game.at(6, 26),game.at(5, 26),
    	game.at(4, 25),game.at(4, 24),game.at(4, 23),game.at(4, 22),game.at(4, 21),game.at(4, 20)]

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