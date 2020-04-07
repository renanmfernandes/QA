# language: pt
Funcionalidade: login no chat da Stelo
  A fim de realizar o login no chat da Stelo
  Como um usuário comum
  Eu quero preencher os campos com as respectivas informações

   Cenário: Como um usuário válido, posso preencher o formulário para logar no chat da Stelo
    Dado estou na tela de formulário
    E o campos "NOME / ESTABELECIMENTO" está vazio 
    Quando digito o nome "João dos Santos"
    E uma outra ação
    E outra ação diferente
    Então um resultado testável é alcançado
    E outra coisa que possamos verificar também acontece

 
    Cenário: As someone who wants to sign up
    Quando Eu visitar a página
    E Eu preencher os campos

    E Eu digito o meu "<NOME / ESTABELECIMENTO>" in the firstname input
    E Eu digito o meu "<CPF / CNPJ >" in the CPF OU CNPJ input
    E Eu digito o meu "<TE-MAIL>" in the E_MAIL input
    E Eu digito o meu "<TELEFONE>" in the TELEFONE confirmation input
    E Eu clico no botão "ENTRAR NO CHAT"
    Então I expect the registration to "<ResultadoEsperado>"

    Examples:
    | NOME / ESTABELECIMENTO   | CPF / CNPJ            | E-MAIL                  | TELEFONE       | ResultadoEsperado |
    | João Carlos              |                       | joão@email.com          |                | Falha             |
    | Fernanda Gonçalves       |                       | fernanda@email.com      | .              | Falha             |
    | Renato Santos            |                       | renato@email.c          | (52)45458-7894 | Falha             |
    | Pizzaria Nobre           |                       | pizzarianobre@email.con | (21)11111-1111 | Falha             |
    | Amelia Souza             |                       | amelia@email.com        | (12)22         | Falha             |
    | Henrique Amarantos       |                       | hentique@email.com      | (31)444-444    | Falha             |
    | Lilian Almeida           |                       | lilian@email.com        | (11)91234-5678 | Sucesso           |