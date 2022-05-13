class Esportista
    def competir
        puts "Participando de uma competição"
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts "Correndo atrás da bola"
    end
end

class Maratonista < Esportista
    def correr
        puts "Percorrendo o circuito"
    end
end

puts "Jogador de Futebol:"
jogador = JogadorDeFutebol.new
jogador.competir
jogador.correr

# Comando \n pula uma linha no console
print "\n"

puts "Maratonista:"
maratonista = Maratonista.new
maratonista.competir
maratonista.correr