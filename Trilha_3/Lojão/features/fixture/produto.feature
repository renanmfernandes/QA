#language: pt
@e2e_produto
Funcionalidade: Gestao de produto na API da Lojinha

     @cadastrar_produto
     Cenario: Validar API POST - Adicionar um novo produto
        Quando estou autenticado na API
        E faco a requisicao com os dados do produto
        Entao e retornado a resposta "201"
        E valido a mensagem "Produto adicionado com sucesso"

    @buscar_produtos
     Cenario: Validar API GET - Buscar produtos
        Quando estou autenticado na API
        E faco a requisicao pela lista de produtos
        Entao e retornado a resposta "200"
        E valido a mensagem "Listagem de produtos realizada com sucesso"

    @buscar_produto
     Cenario: Validar API GET - Buscar produto
        Quando estou autenticado na API
        E faco a requisicao com o "ID" do produto
        Entao e retornado a resposta "200"
        E valido a mensagem "Detalhando dados do produto"