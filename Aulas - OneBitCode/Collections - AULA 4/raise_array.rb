array = []

3.times do
    i = 1
    print "Digite o #{i}° valor do seu array: "
    value = gets.chomp.to_i
    # Adiciona valor digitado pelo usuário ao array
    array.push(value)
    i += 1
end

array.each do |a|
    raise_array = a ** 2
    puts "#{a} elevado à segunda potência é igual a: #{raise_array}"
end
