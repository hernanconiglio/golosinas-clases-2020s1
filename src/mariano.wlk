import golosinas.*

object mariano {
	var golosinas = []
	 
	method comprar(_golosina) { golosinas.add(_golosina) }
	
	method desechar (_golosina) { golosinas.remove(_golosina) }
	
	method golosinas() { return golosinas }
	method primerGolosina() { return golosinas.first() }
	method ultimaGolosina() { return golosinas.last() }
	
	method pesoGolosinas() { 
		return golosinas.sum({ golo => golo.peso() })
	}
	
	method probarGolosinas() {
		golosinas.forEach( {_golosina => _golosina.mordisco() } )
	}
	
	method golosinaMasPesada() { 
		return golosinas.max({ golo => golo.peso() })
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ _golosina => _golosina.libreGluten()}) 
	}
	
	method preciosCuidados() {
		return golosinas.all({ _golosina => _golosina.precio() < 10}) 
	}
	
	
	
	method golosinaDeSabor(_sabor) {
		return golosinas.find({ golosina => golosina.gusto() == _sabor })
	}
	
	method golosinasDeSabor(_sabor) {
		return golosinas.filter({ golosina => golosina.gusto() == _sabor })
	}
	
	method sabores() {
		return golosinas.map({ golosina => golosina.gusto() }).asSet()
	}



	method golosinaMasCara() {
		return golosinas.max( { _golosina => _golosina.precio() } )
	}

	method golosinasFaltantes(golosinasDeseadas) {
		return golosinasDeseadas.difference(golosinas)	
	}


	method gustosFaltantes(_gustosDeseados) {
		return _gustosDeseados.filter({_gustosDeseado => ! self.tieneGolosinaDeSabor(_gustosDeseado)})	
	}
	
	method tieneGolosinaDeSabor(_gusto) {
		return golosinas.any({_golosina => _golosina.gusto() == _gusto})
	}
}















