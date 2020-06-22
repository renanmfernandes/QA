#language: pt

Funcionalidade: Cadastro de Usuario

Contexto: 
    Dado que estou na pagina home do site Luma

Cenario: Cadastro de um usuario com sucesso
    Quando clicar em "Create an Account
    E preencher as informaçoes "Personal Information", "Sign-in Information"
    E clicar em "Create an Account"
    Entao sera retornada a mensagem "Thank you for registering with Main Website Store."

Cenario: 