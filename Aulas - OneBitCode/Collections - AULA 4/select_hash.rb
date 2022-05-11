hash = {0 => "zero", 1 => "um", 2 => "dois", 3 => "três"}

selection = hash.select do |key, value|
    # Seleciona todas as keys com valor > que 0
    key > 0
end

puts selection
