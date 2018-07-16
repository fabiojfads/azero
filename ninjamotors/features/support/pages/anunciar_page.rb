
#AnunciarPage é a classe que representa a pagina de criação de um anuncio
class AnunciarPage < SitePrism::AnuncioPage
    set_url '/vender-meu-carro'

    element :formulario, '#car-seller'
    element :combo_marca, '#brand'
    element :campo_versao, '#version'
    element :campo_ano, '#year'
    element :campo_preco, '#price'
    element :botao_anunciar, '#sell-my-car'

    def cadastrar(carro)
        
        selecionar_marca carro[:marca]
        
        campo_versao.set carro[:versao]
        campo_ano.set carro[:ano]
        campo_preco.set carro[:preco]
        botao_anunciar.click
    end

    def seleciona_marca(marca)
        combo_marca.find('option', text: marca).select_option
    end

    def selecionar_modelo(modelo)
        find("input[id=radio#{modelo}]").click
    end







end