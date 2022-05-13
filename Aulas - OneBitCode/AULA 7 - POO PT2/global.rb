class Bar
    def quz
        # Definindo uma variável global colocando $ antes do nome
        $global = 0
        puts $global
    end
end

class Baz
    def qux
        # Mesma variável sendo acessada em outra classe
        $global += 1
        puts $global
    end
end

bar = Bar.new
bar.quz

baz = Baz.new
baz.qux

# Atribuindo outro valor para a mesma variável fora das classes
$global = 1000
puts $global