system "cls"

numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}

higher_value = 0
numbers.each do |key, value|
    if value > higher_value
        higher_value = value
    end
end

puts "O maior valor é #{higher_value} e ele pertence a chave #{numbers.key(higher_value)}"
puts "#{numbers.key(higher_value)} => #{higher_value}"