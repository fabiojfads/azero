Dado("que possuo o seguinte veiculo") do |table|
    @anuncio = table.hashes
end
  
Quando("faco o anuncio deste veiculo") do
    @anunciar_page.load
    @anunciar_page.wait_for_combo_marca
    @anunciar_page.cadastrar(@anuncio.first)
end
  
Então("devo ver a mensagem de sucesso:") do |string|
pending # Write code here that turns the phrase above into concrete actions
end
  