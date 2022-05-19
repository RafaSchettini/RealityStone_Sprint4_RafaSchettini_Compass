def imc(peso, altura)
    if(altura <= 0)
        return "Não é possível calcular o IMC para altura <= 0!"
    end
    imc_result = peso / (altura * altura)
    return imc_result.round(1)
end
