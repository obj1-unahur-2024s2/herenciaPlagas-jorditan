class Hogar {
  var mugre 
  var confort

  method esBueno()=
    mugre <= (confort / 2)
  
  method sufrirAtaque(unaPlaga) {
    mugre += unaPlaga.nivelDeDanio()
  }
}

class Huerta {
  var produccion

  method esBueno()=
    nivelMinimoDeProduccion.valor() < produccion
  
  method sufrirAtaque(unaPlaga) {
    produccion = 0.max(produccion - (unaPlaga.nivelDeDanio() * 0.1))
    if (unaPlaga.transmiteEnfermedades()) {
      produccion = 0.max(produccion - 10)
    } 
  }
}

object nivelMinimoDeProduccion {
  var property valor = 2000 
}

class Mascota {
  var nivelDeSalud

  method esBueno()=
    nivelDeSalud > 250
  
  method sufrirAtaque(unaPlaga) {
    if (unaPlaga.transmiteEnfermedades()) {
      nivelDeSalud = 0.max(nivelDeSalud - unaPlaga.nivelDeDanio())
    } 
  }
}



