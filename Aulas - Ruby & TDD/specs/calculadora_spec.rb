require 'rspec'

# Podemos usar "binding.pry" para parar de rodar o código na linha em que foi chamado e executar comandos para debug
require 'pry'

require_relative '../src/calculadora'

describe("Calculadora") do
    calc = Calculadora.new
    
    # Testes relacionados à somas
    it("Deve somar dois números inteiros positivos | Deve somar dois números reais positivos") do
        expect(calc.sum(1, 2)).to eq 3
        
        # Soma de números reais positivos
        expect(calc.sum(1.0, 1.5)).to eq 2.5
    end

    it("Deve somar dois números inteiros negativos | Deve somar dois números reais negativos") do
        expect(calc.sum(-1, -2)).to eq -3

        expect(calc.sum(-1.0, -2.0)).to eq -3.0
    end

    it("Deve somar um número inteiro positivo com um número inteiro negativo | Deve somar um número real positivo com um número real negativo ") do
        expect(calc.sum(1, -2)).to eq -1

        expect(calc.sum(1.0, -2.0)).to eq -1.0
    end

    it("Deve somar um número inteiro positivo com 0 | Deve somar um número real positivo com 0") do
        expect(calc.sum(1, 0)).to eq 1

        expect(calc.sum(1.0, 0)).to eq 1.0
    end
    
    it("Deve somar um número inteiro negativo com 0 | Deve somar um número real negativo com 0") do
        expect(calc.sum(-1, 0)).to eq -1

        expect(calc.sum(-1.0, 0)).to eq -1.0
    end

    it("Deve somar um número inteiro com um número real") do
        expect(calc.sum(1, 1.5)).to eq 2.5
        
        expect(calc.sum(-1, -1.5)).to eq -2.5

        expect(calc.sum(1, -1.5)).to eq -0.5
    end

    # Testes relacionados à subtrações
    it("Deve subtrair dois números inteiros positivos") do
        expect(calc.subt(1, 2)).to eq -1
    end

    it("Deve subtrair dois números inteiros negativos") do
        expect(calc.subt(-1, -2)).to eq 1
    end

    it("Deve subtrair um número inteiro positivo com um número inteiro negativo") do
        expect(calc.subt(1, -2)).to eq 3
    end

    it("Deve subtrair um número inteiro positivo com 0") do
        expect(calc.subt(1, 0)).to eq 1
    end

    it("Deve subtrair um número inteiro negativo com 0") do
        expect(calc.subt(-1, 0)).to eq -1
    end

    # Testes relacionados à multiplicações
    it("Deve multiplicar dois números inteiros positivos") do
        expect(calc.mult(1, 2)).to eq 2
    end

    it("Deve multiplicar dois números inteiros negativos") do
        expect(calc.mult(-1, -2)).to eq 2
    end

    it("Deve multiplicar um número inteiro positivo com um número inteiro negativo") do
        expect(calc.mult(1, -2)).to eq -2
    end

    it("Deve multiplicar um número inteiro positivo com 0") do
        expect(calc.mult(1, 0)).to eq 0
    end

    it("Deve multiplicar um número inteiro negativo com 0") do
        expect(calc.mult(-1, 0)).to eq 0
    end

    # Testes relacionados à divisões
    it("Deve dividir dois números inteiros positivos") do
        expect(calc.div(1, 2)).to eq 0
    end

    it("Deve dividir dois números inteiros negativos") do
        expect(calc.div(-1, -2)).to eq 0
    end

    it("Deve dividir um número inteiro positivo com um número inteiro negativo") do
        expect(calc.div(1, -2)).to eq -1
    end

    it("Não deve dividir um número inteiro positivo com 0") do
        expect(calc.div(1, 0)).to eq "Não é possível dividir um número por 0!"
    end

    it("Não deve dividir um número inteiro negativo com 0") do
        expect(calc.div(-1, 0)).to eq "Não é possível dividir um número por 0!"
    end

    # Testes relacionados à potências
    it("Deve elevar um número inteiro positivo à um número inteiro positivo") do
        expect(calc.raise_method(1, 2)).to eq 1
    end

    it("Deve elevar um número inteiro negativo à um número inteiro negativo") do
        expect(calc.raise_method(-1, -2)).to eq 1
    end

    it("Deve elevar um número inteiro positivo à um número inteiro negativo") do
        expect(calc.raise_method(1, -2)).to eq 1
    end

    it("Deve elevar um número inteiro à 0") do
        expect(calc.raise_method(1, 0)).to eq 1
    end

    it("Deve elevar um número inteiro à 0") do
        expect(calc.raise_method(-1, 0)).to eq 1
    end

    # Testes relacionados à restos de divisões
    it("Deve checar o resto de uma divisão entre números inteiros positivos") do
        expect(calc.module(2, 1)).to eq 0
    end

    it("Deve checar o resto de uma divisão entre números inteiros negativos") do
        expect(calc.module(-2, -1)).to eq 0
    end

    it("Deve checar o resto de uma divisão entre um inteiro positivo e um inteiro negativo") do
        expect(calc.module(-2, 1)).to eq 0
    end

    it("Não deve checar o resto de uma divisão entre um inteiro positivo e 0") do
        expect(calc.module(1, 0)).to eq "Não é possível dividir um número por 0!"
    end

    it("Não deve checar o resto de uma divisão entre um inteiro negativo e 0") do
        expect(calc.module(-1, 0)).to eq "Não é possível dividir um número por 0!"
    end
end