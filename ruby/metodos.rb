

# Se o resultado for igual a bugs o codigo será 1
# Se o resultado for sem bugs o codigo será 0


puts 'Qual o resultado do teste? 0 - Sem bugs | 1 - Com bugs'
resultado = STDIN.gets.to_i


def achou_bug(resultado)

    case resultado
    when 0
        puts 'Pode ir para produção'
    when 1
        puts 'Informe o desenvolvedor'
    else
        puts 'Código invalido'
    end

end

achou_bug(resultado)