system "cls"

result = ''

loop do
    puts result
    puts "Escolha uma opção abaixo:"
    puts "1 - Descobrir a idade de uma pessoa"
    puts "0 - Fechar o programa"

    choice = gets.chomp.to_i

    if choice == 1
        print "Digite o ano do seu nascimento: "
        year_of_birth = gets.chomp.to_i 
        print "Digite o ano atual: "
        current_year = gets.chomp.to_i

        age = current_year - year_of_birth
        result = "Quem nasceu no ano de #{year_of_birth} tem #{age} anos no ano de #{current_year}"
    elsif choice == 0
        break
    else
        result "Você digitou uma opção inválida. Tente novamente:"
    end

    system "cls"

end