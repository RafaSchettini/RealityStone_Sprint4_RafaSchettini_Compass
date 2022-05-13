class Dog
    # Definindo atributos com attr_accessor
    attr_accessor :name, :age
end

dog = Dog.new

# Acessando e definindo valores para atributos da classe
dog.name = "Mike"
puts dog.name

dog.age = "10 anos"
puts dog.age