
=begin
    Estórias
    Sendo um cliente correntista do banco
    Posso sacar dinheiro em caixas eletronicos
    Para que eu possa comprar em lugares com dinheiro
    
    Cenarios:
    # Usuario deve ter uma conta corrente
    # O sistema de verificar se o cliente tem saldo disponivel
    # Ao fazer um saque, deve deduzir do saldo do cliente
    # No final deve exibir uma mesagem de sucesso

    # O valor máximo do saque é deve ser de 700 

    
=end

require_relative 'conta'

describe('Saque no caixa eletronico') do
    it('Deve realizar um saque') do
        cliente = Conta.new(1000)
        cliente.saca(500)

        expect(cliente.saldo).to eql 500
        expect(cliente.mensagem_saida).to eql 'Saque realizado com sucesso!'
    end

    it('Quando o valor do saque e maior que o saque disponivél') do
        cliente = Conta.new(1000)
        cliente.saca(2000)
        expect(cliente.saldo).to eql 1000
        expect(cliente.mensagem_saida).to eql 'Saldo insuficiente'
    end
    
    it('Quando o valor do saque é superior ao maximo permitido') do
        cliente = Conta.new(1000)
        cliente.saca(701)
        expect(cliente.saldo).to eql 1000
        expect(cliente.mensagem_saida).to eql 'O valor maximo por transação é de 700.'
    end
end