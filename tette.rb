class UmorismoSpicciolo
  # Commento scritto su github
  @@parole_buffe = ["simonini", "tette", "cacca"]

  def initialize
    @parole_buffe = @@parole_buffe
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

class UmorismoRaffinato < UmorismoSpicciolo
  @@parole_buffe = ["alessandro descovi", "seni", "feci"]
end

umorista = UmorismoRaffinato.new
p umorista.parola_buffa?("Tette")
p umorista.parola_buffa?("tette")
p umorista.parola_buffa?("TEttE")
p umorista.parola_buffa?("Tett")
p umorista.parola_buffa?("Gino", add: true)
p umorista.parola_buffa?("tristezza degli altri", force: true)
p umorista.parola_buffa?("culo")
p umorista.parola_buffa?("culo")
p umorista.parola_buffa?("Gino")
p umorista.parola_buffa?("Seni")
