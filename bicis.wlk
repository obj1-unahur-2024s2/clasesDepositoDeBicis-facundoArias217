class Bici{
    const property rodado  
    const property largo 
    const property marca 
    const property accesorios = []

    method agregarAccesorio(unAccesorio) {accesorios.add(unAccesorio)}
    method sacarAccesorio(unAccesorio) {accesorios.remove(unAccesorio)} 

    method altura() = (rodado *2.5) + 15
    method velocidadCrucero() =
    if (largo > 120){
        rodado + 6
    } else{
        rodado+2
    }
    method carga() = accesorios.sum({a => a.carga()})
    method peso() = (rodado /2) + accesorios.sum({a=> a.peso()})
    method tieneLuz() = accesorios.any({a=> a.esLuminoso()})
    method cantAccesoriosLivianos() = accesorios.count({a => a.peso() < 1})
    method esCompaDe(unaBici) = unaBici.marca() == self.marca() and
    (unaBici.largo() - self.largo()) < 10 and
    unaBici != self
    
}

class Farolito {
  
  method peso() = 0.5
  method carga() = 0
  method esLuminoso() = true   
}
class Canasto {
  var property volumen = 0
  
  method peso() = volumen * 0.10
  method carga() = volumen * 2
  method esLuminoso() = false    
}
class Morral {
  var property largo = 0
  var property tieneOjoDeGato = false

  method peso() = 1.2
  method carga() = largo / 3
  method esLuminoso() = tieneOjoDeGato    
}
