#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar, dar lances e fazer anuncios
    Sendo um usuario do sistema
    Posso logar no sistema 

    @login_simples
    Esquema do Cenario: Login simples
        Dado que eu insira os dados
            |email|<email>|
            |senha|<senha>| 
        Quando eu logar
        Entao sou autenticado na pagina home
    
    Exemplos:
        |email             |senha |
        |fabio123@gmail.com|123456|  
    
   
    @tipos_logins
    Esquema do Cenario: Logins
        Dado que eu insira os dados
            |email|<email>|
            |senha|<senha>| 
        Quando eu logar
        Entao sou autenticado com sucesso e devo ver a mesagem "<mensagem>"
    
    Exemplos:
        |email             |senha |mensagem            |
        |                  |123456|Email não informado.|                           
        |fabio123@gmail.com|      |Senha não informada.|                   
        
