print "Digite o número base da potência: "
base = gets.chomp.to_i

print "Digite o número expoente da potência: "
power = gets.chomp.to_i

def raise_number(base, power)
    return base ** power
end

result = raise_number(base, power)

puts "#{base} elevado à #{power} é igual a: #{result}"