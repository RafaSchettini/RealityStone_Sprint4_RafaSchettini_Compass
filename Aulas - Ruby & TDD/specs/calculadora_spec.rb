require 'rspec'

# Podemos usar "binding.pry" para parar de rodar o código na linha em que foi chamado e executar comandos para debug
require 'pry'

require_relative '../src/calculadora'

describe("Calculadora") do
    calc = Calculadora.new
    
    # Testes relacionados à somas com números inteiros
    it("Deve somar dois números inteiros positivos") do
        expect(calc.sum(1, 2)).to eq 3
    end

    it("Deve somar dois números inteiros negativos") do
        expect(calc.sum(-1, -2)).to eq -3
    end

    it("Deve somar um número inteiro positivo com um número inteiro negativo") do
        expect(calc.sum(1, -2)).to eq -1
    end

    it("Deve somar um número inteiro positivo com 0") do
        expect(calc.sum(1, 0)).to eq 1
    end
    
    it("Deve somar um número inteiro negativo com 0") do
        expect(calc.sum(-1, 0)).to eq -1
    end

    # Testes relacionados à somas com números reais
    it("Deve somar dois números reais positivos") do
        expect(calc.sum(1.0, 1.5)).to eq 2.5
    end

    it("Deve somar dois números reais negativos") do
        expect(calc.sum(-1.0, -2.5)).to eq -3.5
    end

    it("Deve somar um número real positivo com um número real negativo") do
        expect(calc.sum(1.0, -2.5)).to eq -1.5
    end

    it("Deve somar um número real positivo com 0") do
        expect(calc.sum(1.5, 0)).to eq 1.5
    end
    
    it("Deve somar um número real negativo com 0") do
        expect(calc.sum(-1.5, 0)).to eq -1.5
    end

    # Testes relacionados à somas entre um número inteiro e um número real
    it("Deve somar um número inteiro positivo com um número real positivo") do
        expect(calc.sum(1, 1.5)).to eq 2.5
    end

    it("Deve somar um número inteiro negativo com um número real negativo") do
        expect(calc.sum(-1, -1.5)).to eq -2.5
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

    # Testes relacionados à raízes quadradas
    it("Deve realizar a raiz quadrada exata de um número inteiro positivo") do
        expect(calc.sqrt_method(64)).to eq 8
    end

    it("Deve realizar a raiz quadrada não exata de um número inteiro positivo") do
        expect(calc.sqrt_method(60)).to eq 7.7
    end

    it("Deve realizar a raiz quadrada exata de 0") do
        expect(calc.sqrt_method(0)).to eq 0
    end
    
    it("Não deve realizar a raiz quadrada de um número inteiro negativo") do
        expect(calc.sqrt_method(-2)).to eq "Não é possível realizar a raiz quadrada de um número negativo!"
    end
    
    # Testes relacionados à fatoriais
    it("Deve calcular o fatorial de um número inteiro positivo") do
        expect(calc.factorial(6)).to eq 720
    end

    it("Deve calcular o fatorial de 0") do
        expect(calc.factorial(0)).to eq 1
    end

    it("Não deve calcular o fatorial de um número negativo") do
        expect(calc.factorial(-10)).to eq "Não é possível calcular o fatorial de um número negativo!"
    end
    
end