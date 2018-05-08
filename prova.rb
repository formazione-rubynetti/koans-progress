class UmorismoSpicciolo

  @@parole_buffe = ["Simonini", "Tette", "Cacca"].map(&:downcase)

  def aggiungi_parola_buffa(parola)
    @@parole_buffe.push(parola)
  end

  def parola_buffa?(parola, force: false, add: false)
    aggiungi_parola_buffa(parola) if add
    parola = parola.downcase
    if force || @@parole_buffe.include?(parola)
      return "ahahaha, #{parola} che ridere"
    else
      return "buuu, #{parola} fai schifo"
    end
  end

end

umorista = UmorismoSpicciolo.new
p umorista.parola_buffa?("Tette")
p umorista.parola_buffa?("tette")
p umorista.parola_buffa?("TEttE")
p umorista.parola_buffa?("Tett")
p umorista.parola_buffa?("Gino", add: true)
p umorista.parola_buffa?("tristezza", force: true)
p umorista.parola_buffa?("culo")
p umorista.parola_buffa?("culo")
p umorista.parola_buffa?("Gino")
