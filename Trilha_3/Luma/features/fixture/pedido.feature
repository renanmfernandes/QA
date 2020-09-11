#language: pt
@pedido
Funcionalidade: Cadastro de Usuario e Pedido de um produto

    Contexto: 
        Dado que estou na pagina home do site "Luma"

    @cadastro
    Cenario: Cadastro de um usuario com sucesso
        Quando criar uma nova conta
        E preencher as informaçoes de acesso
        Entao validado conta criada com sucesso
    
    @busca
    Cenario: Pesquisa por um produto com sucesso
        Quando pesquisar pelo produto SKU "24-WG02" no campo de pesquisa
        E acessar a tela do produto pesquisado
        Entao valido o nome do produto "Didi Sport Watch"

    @e2e
    Cenario: Gerar pedido
        Dado que estou com um usuario autenticado no site
        E pesquisar pelo produto SKU "24-MB02" e adicionar no carrinho
        Quando finalizar a compra 
        E preenchendo com as informaçoes de endereço, metodo de envio, metodo de pagamento
        Entao o pedido sera gerado com sucesso