class Barrios {
  const property elementos = []

  method agregarElemento(unElemento) {
    elementos.add(unElemento)
  }

  method agregarAll(listaElementos) {
    elementos.addAll(listaElementos)
  }

  method elementosBuenos()=
    elementos.count({
      elemento => elemento.esBueno()
    })
  
  method elementosNoBuenos()=
    elementos.count({
      elemento => !elemento.esBueno()
    })
  
  method esCopado()=
    if (!elementos.isEmpty()) {
      self.elementosBuenos() > 
      self.elementosNoBuenos()
    }
}