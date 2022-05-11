# Importa gem OS
require 'os'

def my_os
    # Função da gem que verifica se o sistema operacional do usuário é Windows
    if OS.windows?
        "Windows"
    
    # Função da gem que verifica se o sistema operacional do usuário é Linux
    elsif OS.linux?
        "Linux"
    
    # Função da gem que verifica se o sistema operacional do usuário é Mac
    elsif OS.mac?
        "Mac"
    else
        "Não foi possível identificar"
    end
end

# Funções da gem que verificam quantidade de cores da CPU e em quantos bits o sistema é baseado
# Chamando método de verificação do sistema operacional
puts "Meu computador possui #{OS.cpu_count} cores, é #{OS.bits} bits e roda o sistema operacional #{my_os}"