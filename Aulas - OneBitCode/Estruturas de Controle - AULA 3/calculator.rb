system "cls"

loop do
    puts "Bem-vindo à calculadora! Para começar:"
    print "Digite o primeiro número: "
    num1 = gets.chomp.to_f

    print "Digite o segundo número: "
    num2 = gets.chomp.to_f
    
    puts "Agora escolha uma das operações abaixo:"
    puts "1 - Adição"
    puts "2 - Subtração"
    puts "3 - Multiplicação"
    puts "4 - Divisão"
    puts "0 - Fechar o programa."

    choice = gets.chomp.to_i

    if choice == 1
        sum = num1 + num2
        puts "O resultado da adição entre #{num1} + #{num2} é igual a: #{sum}"
    elsif choice == 2
        subtraction = num1 - num2
        puts "O resultado da subtração entre #{num1} - #{num2} é igual a: #{subtraction}"
    elsif choice == 3
        mult = num1 * num2
        puts "O resultado da multiplicação entre #{num1} * #{num2} é igual a: #{mult}"
    elsif choice == 4
        div = num1 / num2
        puts "O resultado da divisão entre #{num1} / #{num2} é igual a: #{div}"    
    elsif choice == 0
        break
    else
        puts "Você digitou uma opção inválida. Tente novamente:"
    end
    
    puts "O programa irá reiniciar em 5 segundos..."
    sleep(5)
    system "cls"

end