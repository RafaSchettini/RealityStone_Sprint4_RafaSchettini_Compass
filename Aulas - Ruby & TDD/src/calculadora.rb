class Calculadora
    
    def sum(num, num2)
        num + num2
    end

    def subt(num, num2)
        num - num2
    end

    def mult(num, num2)
        num * num2
    end

    def div(num, num2)
        if (num == 0 or num2 == 0)
            return "Não é possível dividir um número por 0!"
        end
        
        num / num2
    end

    def raise_method(base, power)
        base ** power
    end

    def module(num, num2)
        if (num == 0 or num2 == 0)
            return "Não é possível dividir um número por 0!"
        end
        
        num % num2
    end

    def sqrt_method(num)
        if (num < 0)
            return "Não é possível realizar a raiz quadrada de um número negativo!"
        end
        
        Math.sqrt(num).round(1)
    end

end