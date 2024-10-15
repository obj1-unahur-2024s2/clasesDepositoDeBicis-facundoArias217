class Deposito{
    const property bicis = []

    method cantBicisRapidas() = bicis.count({a=>a.velocidadCrucero() > 25})
    method marcasDeBicis() = bicis.map({b=> b.marca()}).asSet()
    method esNocturno() = bicis.all({b=> b.tieneLuz()})
    method tieneBiciParaLlevar(unaCarga) = bicis.any({b=> b.carga() > unaCarga})
    method laMarcaMasRapida() = self.biciMasRapida().marca()
    method biciMasRapida() = bicis.max({b=> b.velocidad()})
    method bicisLargas() = bicis.filter({b => b.largo() > 170})
    method cargaTotalBicisLargas() {
        if (!self.bicisLargas().isEmpty()){
            return self.bicisLargas().sum({b => b.carga()})
        } else return 0
    }

    method bicisSinAccesorios() = bicis.count({b => b.accesorios().isEmpty()})
    method bicisCompasDe(unaBici) = bicis.filter({b => b.esCompaDe(unaBici)})
}