system "cls"

aulas = {'aula 1' => 'liberada', 'aula 2' => 'liberada', 'aula 3' => 'indisponível'}

aulas.each do |key, value|
    puts "A #{key} está #{value}"
end