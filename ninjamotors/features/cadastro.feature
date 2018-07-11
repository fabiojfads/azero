#language: pt

Funcionalidade: Cadastro de usuario

    Sendo um usuario
    Posso cadastrar meu Cadastro
    Para poder anunciar o meu carro

    #Nome completo do usuario
    #Email do usuario
    #Senha do usuario
    #Senha deve ter no minimo 6 caracteres
    @cadastro
    Cenário: Cadastro simplificado
        Dado que meu nome completo é "Fabio Junior"
        E meu email é "fabio123@gmail.com"
        E minha senha será "123456"
        Quando faço o meu cadastro
        Entao sou autenticado automaticamente
    
    @tentativa_cadastro
    Esquema do Cenário: Tentativas de Cadastro
        Dado que meu nome completo é "<nome>"
        E meu email é "<email>"
        E minha senha será "<senha>"
        Quando faço o meu cadastro
        Entao devo ver a mensagem "<mensagem>"

    Exemplos:
      | nome  | email              | senha  | mensagem                                |
      | Fabio | 123@               | 123456 | Email inválido.                         |
      | Fabio | fabio123@gmail.com | 12345  | Senha deve ter pelo menos 6 caracteres. |
      |       | fabio123@gmail.com | 123456 | Nome não informado.                     |
      | Fabio |                    | 123456 | Email não informado.                    |
      | Fabio | fabio123@gmail.com |        | Senha não informada.                    |