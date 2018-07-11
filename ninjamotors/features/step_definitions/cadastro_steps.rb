
Dado("que meu nome completo é {string}") do |nome|                             
    @nome = nome    
end                                                                              
                                                                                   
Dado("meu email é {string}") do |email|                                         
    @email = email    
end                                                                              
                                                                                   
Dado("minha senha será {string}") do |senha|                                    
    @senha = senha    
end                                                                              

Quando("faço o meu cadastro") do                                                 
    visit 'http://ninjamotors.herokuapp.com/cadastre-se'
    find('#full-name').set @nome
    find('#email').set @email
    find('#password').set @senha
    find('#do-sign-up').click

end                                                                              
                                                                                   
Entao("sou autenticado automaticamente") do                                      
    pending # Write code here that turns the phrase above into concrete actions    
end                                                                              
                                                                                                                                                               
Entao("devo ver a mensagem {string}") do |mensagem|                                
    alert = find('.alert')
    expect(alert.text).to eql mensagem
       
end                                                                              