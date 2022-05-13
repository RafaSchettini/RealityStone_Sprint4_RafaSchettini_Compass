require 'cpf_cnpj'

print "Digite um CPF para ser validado: "
cpf = gets.chomp

def check_cpf(user_cpf)
    if CPF.valid?(user_cpf)
        "O CPF '#{user_cpf}' é válido"
    else
        "O CPF '#{user_cpf}' é inválido"
    end
end

result = check_cpf(cpf)

puts result