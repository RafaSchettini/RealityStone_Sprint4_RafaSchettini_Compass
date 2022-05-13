print "Informe a primeira chave: "
key1 = gets.chomp
print "Informe o valor da chave #{key1}: "
value1 = gets.chomp

print "Informe a segunda chave: "
key2 = gets.chomp
print "Informe o valor da chave #{key2}: "
value2 = gets.chomp

print "Informe a terceira chave: "
key3 = gets.chomp
print "Informe o valor da chave #{key3}: "
value3 = gets.chomp

hash = {key1 => value1, key2 => value2, key3 => value3}

hash.each do |key, value|
    puts "Uma das chaves é #{key} e o seu valor é #{value}"
end

