class Person
    # Método initialize é o primeiro buscado pelo Ruby ao ser executado
    def initialize(name, age)
        @name = name
        @age = age
    end

    def check
        # Instância da classe iniciada com os valores:
        puts "Este é #{@name}"
        puts "#{@name} tem #{@age} anos"
    end
end

# Parâmetros recebidos pelo método initialize
person = Person.new("Rafael", 17)
person.check

person2 = Person.new("Luis", 18)
person2.check