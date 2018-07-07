#Inicializando um Array
#cts = []
@cts = Array.new

def adiciona
    system('clear')
    puts 'Informe um senario de teste:'
    nome = STDIN.gets
    @cts.push(nome) #Metodo push adiciona um registro dentro de um array
end

def lista
    puts 'Listando os casos de testes:'
    @cts.each do |ct|
        puts ct
    end
end

@opcao = 0

begin
    puts '##########Test Link RB ###############'
    puts '1 - Adicionar um Cenario'
    puts '2 - Listar cenários'
    puts '3 - Sair'
    puts '######################################'

    @opcao = STDIN.gets.to_i
    case @opcao
        when 1
            adiciona
        when 2
            lista
    else
        puts 'Opçõe inválida'
    end
end while @opcao != 3
