Dado("que eu insira os dados") do |table|
    @usuario_login = table.rows_hash
end
  
Quando("eu logar") do
    visit 'http://ninjamotors.herokuapp.com/acessar'
    find('#email').set @usuario_login[:email]
    find('#password').set @usuario_login[:senha]
    find('#do-login').click
end                                                                      
                                                                                 
Entao("sou autenticado com sucesso e devo ver a mesagem {string}") do |mensagem| 
    alert = find('.alert')
    expect(alert.text).to eql mensagem  
end  

Entao("sou autenticado na pagina home") do
    usuario_cadastro = Cadastro.new
    aut = find('#navbarDropdown')
    expect(aut.text).to eql @usuario_cadastro[:nome]
end


