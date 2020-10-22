#language: pt
@e2e_login_usuario
Funcionalidade: Gestao de usuario e fazer login na API da Lojinha

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