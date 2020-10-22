#language: pt
@e2e_produto
Funcionalidade: Gestao de produto na API da Lojinha

   Contexto:
      Dado que estou autenticado na API 

     @cadastrar_produto
     Cenario: Validar API POST - Adicionar um novo produto
        Quando faco a requisicao com os dados do produto
        Entao e retornado a resposta "201"
        E valido a mensagem "Produto adicionado com sucesso"

    @buscar_produtos
     Cenario: Validar API GET - Buscar produtos
        Quando faco a requisicao pela lista de produtos
        Entao e retornado a resposta "200"
        E valido a mensagem "Listagem de produtos realizada com sucesso"

    @buscar_produto
     Cenario: Validar API GET - Buscar produto
        Quando faco a requisicao com o "ID" do produto
        Entao e retornado a resposta "200"
        E valido a mensagem "Detalhando dados do produto"

   @alterar_produto
     Cenario: Validar API PUT - Alterar produto
        Quando faco a requisicao com os novos dados e a "ID" do produto a ser alterado
        Entao e retornado a resposta "200"
        E valido a mensagem "Produto alterado com sucesso"

   @apagar_produto
     Cenario: Validar API DELETE - Apagar produto
        Quando faco a requisicao com o "ID" do produto a ser deletado
        Entao valido a exclusao no retorno da resposta "204"