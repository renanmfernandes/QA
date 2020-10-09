#language: pt
@adicionar_usuario
Funcionalidade: Criar usuario na API da Lojinha

    Contexto:
        Dado que estou na requisição "Adicionar novo usuário"

    Cenario: Validar API POST - Criar usuario
        Quando faco a requisicao com os dados "nome", "login" e "senha"
        Entao e retornado a resposta "201"
        E valido a mensagem "Usuário adicionado com sucesso" 
