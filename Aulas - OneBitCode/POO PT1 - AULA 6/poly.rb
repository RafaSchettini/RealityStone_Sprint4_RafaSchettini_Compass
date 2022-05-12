class Instrumento
    def escrever
        puts "Escrevendo"
    end
end

class Teclado < Instrumento
    # Método com mesmo nome de método existente na classe pai, o método da classe filha "Teclado" irá sobscrever o método da classe pai "Instrumento"
    def escrever
        puts "Escrevendo à teclado"
        # Comando "super" executa o método da classe pai mesmo que seu método tenha sido subscrito
        super
    end
end

class Lapis < Instrumento
    # Método com mesmo nome de método existente na classe pai, o método da classe filha "Lápis" irá sobscrever o método da classe pai "Instrumento"
    def escrever
        puts "Escrevendo à lápis"
    end
end

class Caneta < Instrumento
     # Método com mesmo nome de método existente na classe pai, o método da classe filha "Caneta" irá sobscrever o método da classe pai "Instrumento"
    def escrever
        puts "Escrevendo à caneta"
    end
end

teclado = Teclado.new
teclado.escrever

lapis = Lapis.new
lapis.escrever

caneta = Caneta.new
caneta.escrever