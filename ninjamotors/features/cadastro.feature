#language: pt

Funcionalidade: Cadastro de usuario

    Sendo um usuario
    Posso cadastrar meu Cadastro
    Para poder anunciar o meu carro

    #Nome completo do usuario
    #Email do usuario
    #Senha do usuario
    #Senha deve ter no minimo 6 caracteres
    @doing
    Cenário: Cadastro simplificado
        Dado que tenha o siguinte cadastro
            |nome |Fabio             |
            |email|fabio123@gmail.com|
            |senha|123456            |
        Quando faço o meu cadastro
        Entao sou autenticado automaticamente
    
    @tentativa_cadastro
    Esquema do Cenário: Tentativas de Cadastro
        Dado que tenha o siguinte cadastro
            |nome |<nome> |
            |email|<email>|
            |senha|<senha>|
        Quando faço o meu cadastro
        Entao devo ver a mensagem "<mensagem>"

    Exemplos:
      | nome         | email              | senha  | mensagem                                |
      | Fabio Junior | 123@               | 123456 | Email inválido.                         |
      | Fabio Junior | fabio123@gmail.com | 12345  | Senha deve ter pelo menos 6 caracteres. |
      |              | fabio123@gmail.com | 123456 | Nome não informado.                     |
      | Fabio Junior |                    | 123456 | Email não informado.                    |
      | Fabio Junior | fabio123@gmail.com |        | Senha não informada.                    |