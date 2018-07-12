Quando("faço login com {string} e {string}") do |email, senha|
    visit '/acessar'
    find('#email').set email
    find('input[type=password]').set senha
    find('#do-login').click
end
  
Entao("vejo meu nome {string} na area logada") do |nome_usuario|
    menu_usuario = find('nav #navbarDropdown')
    expect(menu_usuario ).to have_content nome_usuario
end

Entao("vejo a seguinte mensagem {string}") do |mensagem|
   alert = find('.alert')  
   expect(alert.text).to eql mensagem  
end

Quando("tento logar com os seguintes dados:") do |table|
    @tentativas = table.hashes
    @mensagens = []
    visit '/acessar'
    @tentativas.each do |t|
        find('#email').set t[:email]
        find('input[type=password]').set t[:senha]
        find('#do-login').click
        alert = find('.alert')
        mensagens.push({'mensagem' => alert.text})
    end
end
  
Entao("devo ver as seguintes mensagens:") do |table|
    expect(@mensagens).to eql table.hashes
end