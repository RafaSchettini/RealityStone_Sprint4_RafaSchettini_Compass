class Animal
    def pular
        puts "Pulando"
    end

    def dormir
        puts "ZzZzZzZ"
    end
end

# Classe "Cachorro" importa métodos da classe "Animal" 
class Cachorro < Animal
    def latir
        puts "Au Au"
    end
end

# Classe "Gato" importa métodos da classe "Animal"
class Gato < Animal
    def miar
        puts "Meow Meow"
    end
end

# Criando um novo objeto da classe "Cachorro" e armazenando na variável "cachorro"
cachorro = Cachorro.new

# Classe "Cachorro" consegue executar corretamente todos os métodos presentes na classe pai "Animal"
cachorro.pular
cachorro.dormir

# Assim como consegue executar métodos exclusivos de sua classe
cachorro.latir

# Criando um novo objeto da classe "Gato" e armazenando na variável "gato"
gato = Gato.new

# Classe "Gato" consegue executar corretamente todos os métodos presentes na classe pai "Animal"
gato.pular

# Assim como consegue executar métodos exclusivos de sua classe
gato.miar