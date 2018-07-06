

# idade = 0

# puts 'Qual sua idade?'
# idade = STDIN.gets.to_i

# # puts idade
# # puts idade.class


# puts idade >= 18

# if idade >= 18
#     puts 'Parabéns, voce pode tirar sua habilitação'
# else
#     puts 'Você não pode tirar sua autorização'
# end


# conta_bloqueada = false

# unless conta_bloqueada
#     puts 'Fazendo login'
# else
#     puts 'Entre em contato com o atendimento'
# end

puts 'Qual dia da semana?'

dia_da_semana = STDIN.gets.to_i

# if dia_da_semana == 1
#     puts 'Segunda-feira'
# elsif dia_da_semana == 2
#     puts 'Terça-feira'
# elsif dia_da_semana == 3
#     puts 'Quarta-feira'
# elsif dia_da_semana == 4
#     puts 'Quinta-feira'
# elsif dia_da_semana == 5
#     puts 'Sexta-feira'
# else
#     puts 'Opção incorreta'
# end

case dia_da_semana
when 1
    puts 'Segunda'
when 2
    puts 'Terça'
when 3
    puts 'Quarta'
when 4
    puts 'Quinta'
when 5
    puts 'Sexta'
else
    puts 'Opção incorreta'
end

