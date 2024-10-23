class Barrios {
  const elementos = []

  method agregarElemento(unElemento) {
    elementos.add(unElemento)
  }

  method agregarAll(listaElementos) {
    elementos.addAll(listaElementos)
  }

  method cantidadElementosBuenos()=
    elementos.count({
      elemento => elemento.esBueno()
    })
  
  method cantidadElementosNoBuenos()=
    elementos.count({
      elemento => !elemento.esBueno()
    })
  
  method esCopado()=
    if (!elementos.isEmpty()) {
      self.cantidadElementosBuenos() > 
      self.cantidadElementosNoBuenos()
    }
}