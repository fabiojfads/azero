

Before do
    @cadastro_page = CadastroPage.new
    @home_page = HomePage.new
    @login_page = LoginPage.new
    @anunciar_page = AnunciarPage.new
end

Before do
    @login_page.load
    @login_page.logar('eufabio@gmail.com', '123456')
    @login_page.wait_for_menu_usuario
end

Before do
    visit '/api/user/fabio123@gmail.com/delete'
end


After do
    puts 'Evidenciando os testes'
end