# "print" Imprime dados sem pular uma linha.
print "Digite o seu primeiro nome: "

# Armazena entrada de dados do usuário em uma variável
name = gets.chomp

print "Digite o seu sobrenome: "
sobrenome = gets.chomp

# "puts" Imprime dados pulando uma linha
# Uso de variável dentro de uma string
puts "Hello #{name} #{sobrenome}"