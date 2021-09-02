#language: pt
@e2e
Funcionalidade: Criar usuario na API da Lojinha

    Contexto:
        Dado que estou na API lojinha

    @adicionar_usuario
    Cenario: Validar API POST - Adicionar novo usuario
        Quando faco a requisicao com os dados "nome", "login" e "senha"
        Entao e retornado a resposta "201"
        E valido a mensagem "Usuário adicionado com sucesso" 

    @fazer_login
     Cenario: Validar API POST - Fazer login
        Quando faco a requisicao com os dados "login" e "senha"
        Entao e retornado a resposta "200" e o "token" de autenticacao
        E valido a mensagem "Sucesso ao realizar o login"

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