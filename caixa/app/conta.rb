class Conta
    attr_accessor :saldo, :mensagem_saida

    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
        if valor > saldo
            @mensagem_saida = 'Saldo insuficiente'
        elsif valor > 700
            @mensagem_saida = 'O valor maximo por transação é de 700.'

        else
            @saldo -= valor
            @mensagem_saida = 'Saque realizado com sucesso!'
        end
    end
end