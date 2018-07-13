#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar, dar lances e fazer anuncios
    Sendo um usuario do sistema
    Posso logar no sistema 

   Contexto: Acessar
        Dado que eu acessei a pagina de login
    
    
    Cenario: Login 
        Quando faço login com "login" e "senha"
        Entao vejo meu nome "nome" na area logada
    
   
    Esquema do Cenario: Login sem sucesso
         Quando faço login com "<email>" e "<senha>"
         Entao vejo a seguinte mensagem "<mensagem>"

        Exemplos: 
        |email              |senha      |mensagem                     |
        |email@gmail.com    |11111111111|Usuário e/ou senha inválidos.|
        |123email@gmail.com |123456     |Usuário e/ou senha inválidos.|
        |email#gmail.com    |123456     |Email inválido.              |
    
    
    Cenario: Login sem sucesso
         Quando tento logar com os seguintes dados:
            |email              |senha      |
            |email@gmail.com    |111111     |
            |123email@gmail.com |123456     |
            |email#gmail.com    |123456     |
         Entao devo ver as seguintes mensagens:
            |mensagem                     |
            |Usuário e/ou senha inválidos.|
            |Usuário e/ou senha inválidos.|
            |Email inválido.              |