#language: pt
@e2e_complemento
Funcionalidade: Gestao de complementos de produto na API da Lojinha

   Contexto:
      Dado que estou autenticado na API

     @cadastrar_componente
     Cenario: Validar API POST - Adicionar um novo componente a um produto
        Quando faco a requisicao com os dados do componente
        Entao e retornado a resposta "201"
        E valido a mensagem "Componente de produto adicionado com sucesso"

    @buscar_componentes
     Cenario: Validar API GET - Buscar componentes de um produto
        Quando faco a requisicao pela lista de componentes
        Entao e retornado a resposta "200"
        E valido a mensagem "Listagem de componentes de produto realizada com sucesso"

    @buscar_componente
     Cenario: Validar API GET - Buscar um componente de produto
        Quando faco a requisicao com o "ID" do componente
        Entao e retornado a resposta "200"
        E valido a mensagem "Detalhando dados do componente de produto"

   @alterar_componente
     Cenario: Validar API PUT - Alterar componente de um produto
        Quando faco a requisicao com os novos dados e a "ID" do componente a ser alterado
        Entao e retornado a resposta "200"
        E valido a mensagem "Componente de produto alterado com sucesso"

   @apagar_componente
     Cenario: Validar API DELETE - Apagar um componente de um produto
        Quando faco a requisicao com o "ID" do componente a ser deletado
        Entao valido a exclusao no retorno da resposta "204"