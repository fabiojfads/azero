
Dado("que tenha o siguinte cadastro") do |table|
    @usuario = table.rows_hash
 end                                                                             

Quando("faço o meu cadastro") do                                                 
    visit '/cadastre-se'
    find('#full-name').set @usuario[:nome]
    find('#email').set @usuario[:email]
    find('#password').set @usuario[:senha]
    find('#do-sign-up').click

end                                                                              
                                                                                   
Entao("sou autenticado automaticamente") do                                      
    menu_usuario = find('#navbarDropdow')
    expect(menu_usuario.text).to eql @usuario[:nome] 
end                                                                              
                                                                                                                                                               
Entao("devo ver a mensagem {string}") do |mensagem|                                
    alert = find('.alert')
    expect(alert.text).to eql mensagem  
end                                                                              