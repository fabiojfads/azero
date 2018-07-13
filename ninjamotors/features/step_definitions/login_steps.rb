Dado("que eu acessei a pagina de login") do
    @login_page = LoginPage.new
end

Quando("faço login com {string} e {string}") do |email, senha|
    @login_page.logar(email, senha)
end
  
Entao("vejo meu nome {string} na area logada") do |nome_usuario| 
    expect(@home_page.mensagem).to have_content nome_usuario
end

Entao("vejo a seguinte mensagem {string}") do |mensagem|
   expect(@login_page.alerta.text).to eql mensagem  
end

Quando("tento logar com os seguintes dados:") do |table|
    @tentativas = table.hashes
    @mensagens = []
    @tentativas.each do |t|
        @login_page.logar(email, senha)
        @mensagens.push('mensagem' => @login_page.alerta.text)
    end
end
  
Entao("devo ver as seguintes mensagens:") do |table|
    expect(@mensagens).to eql table.hashes
end