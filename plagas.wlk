class Plaga {
  const property poblacion = []

  method agregarPlaga(unaPlaga) {
    poblacion.add(unaPlaga)
  }

  method cantidadPoblacion()=
    poblacion.size()
  
  method transmiteEnfermedades()=
    poblacion.size() >= 10
  
}

class PlagaDeCucarachas inherits Plaga {
  method pesoPromedio()=
    self.poblacion().sum({
      cuca => cuca.peso()
    }) / self.cantidadPoblacion()
  
  method nivelDeDanio()=
    self.cantidadPoblacion() / 2
  
  override method transmiteEnfermedades()=
    super() and self.pesoPromedio() >= 10
}

class PlagaDePulgas inherits Plaga {
  method nivelDeDanio()=
    self.cantidadPoblacion() * 2
}

class PlagaDeGarrapatas inherits PlagaDePulgas { 

}

class PlagaDeMosquitos inherits Plaga{
  method nivelDeDanio()=
    self.poblacion()

  override method transmiteEnfermedades()=
    super() and 
    self.poblacion() % 3 == 0
}
