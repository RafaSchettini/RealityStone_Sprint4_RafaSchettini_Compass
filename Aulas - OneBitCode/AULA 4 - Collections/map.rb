system "cls"

array = [1, 2, 3, 4]

# Irá criar um novo array ("new_array") com base no array original
new_array = array.map do |a|
    a * 2
end

# Imprime array inicial
puts "Array inicial: #{array}"
# Imprime novo array com números do array inicial multiplicado por 2
puts "Novo array: #{new_array}"


# Irá substituir os valores do array inicial ("array")
array.map! do |a|
    a * 2
end

puts "Array inicial alterado: #{array}"