Funcionalidade: Teste da task ADT-447

Cenario: Distibuição de verba a usuário a nível Master
    Quando Quando navegando pelas pastar "Budget" e "Brands"
    E clicado em "Transfer to Brand" a tela com a váriavel "amout" aparecera
    E quando digitado o valor da verba de "100000"
    E clicado em "Send"
    Então se dará "success"

Contexto: Estando na pagina de login do Digital Trade

Cenário: Responsividade da tela de Login
    Quando redirecionado a dimensão da janela do navegador
    E ajustando a janela em várias tamanhos
    Então o site respondera ao tamanho e resolução da janela

    Exemplo:

Cenário: Login com usuario AmBev valido
    Quando digitado o "ID Ambev" no campo "Insira seu ID AmBev"
    E digitado a "senha" no campo "Insira sua senha"
    E clicar no botão "ENTRAR"
    Então sera redirecionado a tela de "Gerenciamento de usuários"

    Exemplo:

Cenário: Login com usuario AmBev invalido
    Quando digitado o "ID Ambev" no campo "Insira seu ID AmBev"
    E digitado a "senha" no campo "Insira sua senha"
    E clicar no botão "ENTRAR"
    Então exibida uma mensagem "Email ou senha inválidos" acima do botão "ENTRAR" em vermelho

    Exemplo:

Cenário: Login com uma senha invalido
    Quando digitado o "ID Ambev" no campo "Insira seu ID AmBev"
    E digitado a "senha" no campo "Insira sua senha"
    E clicar no botão "ENTRAR"
    Então exibida uma mensagem "Email ou senha inválidos" acima do botão "ENTRAR" em vermelho

    Exemplo: