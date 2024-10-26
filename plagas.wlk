class Plaga {
  var poblacion 
  method poblacion()= poblacion

  method transmiteEnfermedades()=
    poblacion >= 10

  method atacar(unElemento) {
    unElemento.sufrirAtaque(self)
    self.efectoDelAtaque()
  }

  method efectoDelAtaque() {
    poblacion *= 1.1
  }
}

class PlagaDeCucarachas inherits Plaga {
  var property pesoPromedio
  
  method nivelDeDanio()=
    poblacion / 2
  
  override method transmiteEnfermedades()=
    super() and pesoPromedio >= 10

  override method efectoDelAtaque() {
    super(); pesoPromedio += 2
  }
  
}
class PlagaDeGarrapatas inherits PlagaDePulgas { 
  override method efectoDelAtaque() {
    poblacion *= 1.2
  }
}

class PlagaDePulgas inherits Plaga {
  method nivelDeDanio()=
    poblacion * 2
}


class PlagaDeMosquitos inherits Plaga{
  method nivelDeDanio()=
    poblacion

  override method transmiteEnfermedades()=
    super() and 
    poblacion % 3 == 0
}
