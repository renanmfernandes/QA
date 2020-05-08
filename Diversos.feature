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


Funcionalidade: Alteração da "Lista de usuarios"

Contexto: Estando Logado no sistema

Cenário: Lista de usuários logado como AC
    Quando clicado no menu "Sistema"
    E clicado no submenu "Todos os Usuarios"
    Então a lista de usuarios estara dividos nas colunas "Nome", "Sobrenome", "E-mail", "Funçao", "Unidade Relacionada", "situaçao"

    Exemplo:

Cenário: Lista de usuários logado como Regional
    Quando clicado no menu "Sistema"
    E clicado no submenu "Todos os Usuarios"
    Então a lista de usuarios estara dividos nas colunas "Nome", "Sobrenome", "E-mail", "Funçao", "Unidade Relacionada", "situaçao"

    Exemplo:

Cenário: Lista de usuários logado como Comercial
    Quando clicado no menu "Sistema"
    E clicado no submenu "Todos os Usuarios"
    Então a lista de usuarios estara dividos nas colunas "Nome", "Sobrenome", "E-mail", "Funçao", "Unidade Relacionada", "situaçao"

    Exemplo:


Funcionalidade: Alteração da "Lista de Comerciais"

Contexto: Estando Logado no sistema em ambiente HMG

Cenário: Lista de usuários logado como AC
    Quando clicado no menu "Unidades"
    E clicado no submenu "Comercial"
    Então a lista de comerciais estara divididos nas colunas "Nome", "Regional Pertencente", "Situaçao", "Ação"

    Evidencia:


Funcionalidade: Alteração das colunas da pagina "Lista de Operações"

Contexto: Estando Logado no sistema em ambiente HMG

Cenário: Lista de usuários logado como AC
    Quando clicado no menu "Unidades"
    E clicado no submenu "Operação"
    Então a lista de comerciais estara divididos nas colunas "Nome", "Regional Pertencente", "Comercial Pertencente", "Situaçao", "Ação"

    Evidencia:

Cenário: Lista de usuários logado como Regional
    Quando clicado no menu "Unidades"
    E clicado no submenu "Operação"
    Então a lista de comerciais estara divididos nas colunas "Nome", "Regional Pertencente", "Comercial Pertencente", "Situaçao", "Ação"

    Evidencia:

Cenário: Lista de usuários logado como Comercial
    Quando clicado no menu "Unidades"
    E clicado no submenu "Operação"
    Então a lista de comerciais estara divididos nas colunas "Nome", "Regional Pertencente", "Comercial Pertencente", "Situaçao", "Ação"

    Evidencia: