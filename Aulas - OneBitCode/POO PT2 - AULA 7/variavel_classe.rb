class User
    # Iniciando uma variável de classe com @@ antes do nome
    @@user_count = 0
    def add(name)
        puts "Usuário '#{name}' adicionado"
        # Variável pode ser acessada em qualquer lugar e método dentro da classe que foi iniciada
        @@user_count += 1
        puts "Quantidade de usuários: #{@@user_count}"
    end
end

rafael = User.new
rafael.add("Rafael")

luis = User.new
luis.add("Luis Felipe")

joao = User.new
joao.add("João")