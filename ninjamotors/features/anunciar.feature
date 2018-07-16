

#language: pt

Funcionalidade: Anunciar meu carro
    Para que eu possa anunciar e receber ofertas de compras
    Sendo um usuario
    Posso anunciar meu carro

    -Regras:
        - Se o carro for blindado, não permite o anuncio
    @anuncio @auth
    Cenario: Criar anuncio

        Dado que possuo o seguinte veiculo
            | marca     | modelo | versao  | ano  | preco      |
            | Chevrolet | Camaro | Blue 79 | 1979 | 250.000,00 |
        Quando faco o anuncio deste veiculo
        Então devo ver a mensagem de sucesso:
        """
        Parabens.Seu carro foi anunciado com sucesso
        """