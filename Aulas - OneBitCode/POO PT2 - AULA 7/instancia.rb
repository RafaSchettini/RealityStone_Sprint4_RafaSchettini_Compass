class User
    def add(name)
        # Iniciando uma variável de instância com @ antes do nome
        @name = name
        puts "Novo usuário adicionado"
        # Chamando método "hello"
        hello
    end

    def hello
        # Variável sendo acessada em outro método recebendo o valor passado anteriormente no método "add"
        puts "Seja bem-vindo #{@name}"
    end
end

joao = User.new
joao.add("João")

rafael = User.new
rafael.add("Rafael")