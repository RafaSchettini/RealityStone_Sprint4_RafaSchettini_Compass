require 'rspec'
require_relative '../src/imc'

describe("IMC") do
    it("Deve calcular com peso e altura válidos") do
        peso = 60
        altura = 1.70
        expect(imc(peso, altura)).to eq 20.8
    end

    it("Não deve calcular o IMC para alturas <= 0") do
        peso = 60
        altura = 0
        expect(imc(peso, altura)).to include "Não é possível calcular o IMC para altura <= 0!"
    end
end