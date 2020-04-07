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
    E Eu digito o meu "<E-MAIL>" in the E-MAIL input
    E Eu digito o meu "<TELEFONE>" in the TELEFONE input
    E Eu digito o meu "<TELEFONE>" in the TELEFONE confirmation input
    E I agree to the terms and conditions
    E I click the Submit button
    Then I expect the registration to "<ExpectedResult>"

    Examples:
    |  NOME / ESTABELECIMENTO  | CPF / CNPJ            | E-MAIL                | TELEFONE       | ExpectedResult |
    | First                    |                       | first@somewhere.com   |                | Fail           |
    | Second                   |                       | second@somewhere.com  | .              | Fail           |
    | Third                    |                       | third@somewhere.com   | toofew         | Fail           |
    | Fourth                   |                       | fourth@somewhere.com  | weakTELEFONE   | Fail           |
    | Fifth                    |                       | fifth@somewhere.com   | MissingNumber  | Fail           |
    | Sixth                    |                       | sixth@somewhere.com   | m1ssingc4pital | Fail           |
    | seventh                  |                       | seventh@somewhere.com | CapsAndNumb3r  | Pass           |