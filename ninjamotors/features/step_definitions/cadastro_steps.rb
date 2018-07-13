

Dado("que tenha o siguinte cadastro") do |table|
    @usuario = table.rows_hash 
    @cadastro_page.load
end

Quando("faço o meu cadastro") do
  @cadastro_page.cadastrar(@usuario)
end

Entao("sou autenticado automaticamente") do
    expect(@home_page.mensagem).to have_content @usuario[:nome]
end