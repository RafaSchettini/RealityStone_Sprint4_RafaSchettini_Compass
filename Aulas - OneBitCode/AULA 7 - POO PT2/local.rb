def foo
    # Variável local pode ser acessada apenas dentro do método
    local = "Imprimindo dentro do método"
    puts local
end

foo

# Variável pode ser alterada pois a anterior só existe dentro do método em que foi inicializada
local = "Imprimindo fora do método com valor diferente"

puts local