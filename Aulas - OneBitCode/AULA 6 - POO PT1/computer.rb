# Criando uma nova classe e definindo métodos dentro da classe
class Computer
    def turn_on
        "Computer's turning on."
    end

    def turn_off
        "Computer's turning off."
    end
end

# Criando um novo objeto da classe "Computer" e armazenando na variável "computer"
computer = Computer.new

# Método da classe "Computer" é chamado e impresso
puts computer.turn_on

puts computer.turn_off