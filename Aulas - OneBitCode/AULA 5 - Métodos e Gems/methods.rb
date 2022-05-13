# Parâmetros necessários pois não recebem um valor inicialmente
def talk(first_name, last_name)
    puts "Olá #{first_name} #{last_name}!"
end

talk("Rafael", "Schettini")

# Parâmetro opcional pois já recebe um valor
def signal(color = "vermelho")
    puts "O sinal está #{color}"
end

# Chamando método sem passar um parâmetro
signal

# Chamando método passando um parâmetro
signal("verde")