class Umorismo

  def initialize(parole_buffe)
    @parole_buffe = parole_buffe
  end

  def parole_buffe
    @parole_buffe
  end

  def aggiungi_parola_buffa(parola)
    @parole_buffe.push(parola)
  end

  def parola_buffa?(parola, force: false, add: false)
    parola = parola.downcase
    aggiungi_parola_buffa(parola) if add
    if force || @parole_buffe.include?(parola)
      return "ahahaha, #{parola} che ridere"
    else
      return "buuu, #{parola} fai schifo"
    end
  end
end

class UmorismoSpicciolo < Umorismo
  def initialize(parole_buffe = [])
    @parole_buffe = ["simonini", "tette", "cacca"] + parole_buffe
  end
end

class UmorismoRaffinato < Umorismo
  def initialize(parole_buffe = [])
    @parole_buffe = ["alessandro descovi", "seni", "feci"] + parole_buffe
  end
end

umorista = Umorismo.new(["scimmia", "pupù"])
`say ghesboro`
`say #{umorista.parola_buffa?("scimmia")}`
`say #{umorista.parola_buffa?("pupù")}`
`say #{umorista.parola_buffa?("procastinare")}`


umorista_raffinato = UmorismoRaffinato.new()
umorista_spicciolo = UmorismoSpicciolo.new
`say #{umorista_raffinato.parola_buffa?("tette")}`
`say #{umorista_spicciolo.parola_buffa?("tette")}`
`say #{umorista_raffinato.parola_buffa?("feci")}`
`say #{umorista_spicciolo.parola_buffa?("feci")}`
