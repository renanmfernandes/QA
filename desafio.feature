# language: pt
Funcionalidade: login no chat da Stelo
  A fim de realizar o login no chat da Stelo
  Como um usuário comum
  Eu quero preencher os campos com as respectivas informações

  
  Cenário: Login no chat Stelo com credenciais válidas
    Quando Eu visitar a página
    E Eu preencher os campos
    E Eu digito o meu "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO
    E Eu digito o meu "<CPF / CNPJ >" no campo CPF / CNPJ
    E Eu digito o meu "<E-MAIL>" no campo E-MAIL
    E Eu digito o meu "<TELEFONE>" no campo TELEFONE confirmation
    E Eu clico no botão "ENTRAR NO CHAT"
    Então Espero que o registro seja "<ResultadoEsperado>"

    
  Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
    Quando Eu visitar a página
    E Eu preencher os campos
    E Eu digito o meu "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO
    E Eu digito o meu "<CPF / CNPJ >" no campo CPF / CNPJ
    E Eu digito o meu "<E-MAIL>" no campo E-MAIL
    E Eu digito o meu "<TELEFONE>" no campo TELEFONE confirmation
    E Eu clico no botão "ENTRAR NO CHAT"
    Então Espero que o registro seja "<ResultadoEsperado>"


  Cenário: Tentativa de login no chat Stelo sem NOME / ESTABELECIMENTO válido
    Quando Eu visitar a página
    E Eu preencher os campos
    E Eu digito o meu "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO
    E Eu digito o meu "<CPF / CNPJ >" no campo CPF / CNPJ
    E Eu digito o meu "<E-MAIL>" no campo E-MAIL
    E Eu digito o meu "<TELEFONE>" no campo TELEFONE confirmation
    E Eu clico no botão "ENTRAR NO CHAT"
    Então Espero que o registro seja "<ResultadoEsperado>"

        
  Cenário: Tentativa de login no chat Stelo com CPF / CNPJ inválido
    Quando Eu visitar a página
    E Eu preencher os campos
    E Eu digito o meu "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO
    E Eu digito o meu "<CPF / CNPJ >" no campo CPF / CNPJ
    E Eu digito o meu "<E-MAIL>" no campo E-MAIL
    E Eu digito o meu "<TELEFONE>" no campo TELEFONE
    E Eu clico no botão "ENTRAR NO CHAT"
    Então Espero que o registro seja "<ResultadoEsperado>"

       
  Cenário: Tentativa de login no chat Stelo com E-MAIL inválidos
    Quando Eu visitar a página
    E Eu preencher os campos
    E Eu digito o meu "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO
    E Eu digito o meu "<CPF / CNPJ >" no campo CPF / CNPJ
    E Eu digito o meu "<E-MAIL>" no campo E-MAIL
    E Eu digito o meu "<TELEFONE>" no campo TELEFONE
    E Eu clico no botão "ENTRAR NO CHAT"
    Então Espero que o registro seja "<ResultadoEsperado>"


  Cenário: Tentativa de login no chat Stelo com TELEFONE inválidos
    Quando Eu visitar a página
    E Eu preencher os campos
    E Eu digito o meu "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO
    E Eu digito o meu "<CPF / CNPJ >" no campo CPF / CNPJ
    E Eu digito o meu "<E-MAIL>" no campo E-MAIL
    E Eu digito o meu "<TELEFONE>" no campo TELEFONE
    E Eu clico no botão "ENTRAR NO CHAT"
    Então Espero que o registro seja "<ResultadoEsperado>"


    Exemplos:
        | NOME / ESTABELECIMENTO   | CPF / CNPJ            | E-MAIL                   | TELEFONE        | ResultadoEsperado     |
        | João Carlos              | 049.750.385-95        | joão@email.com           |                 | Insucesso             |
        | Fernanda Gonçalves       |                       | fernanda@email.com.br    |                 | Insucesso             |
        | Renato Santos            | 00.128.655/0035-00    |                          |                 | Insucesso             |
        | Amelia Souza             | 012.345.678-90        | amelia@email.com.br      | (12)22          | Insucesso             |
        | Henrique Amarantos       | 706.871.712-88        | hentique@email.com       | (31)444-444     | Insucesso             |
        |                          | 358.922.850-49        | nada@email.com           | (57)444-44      | Insucesso             |
        | .                        | 572.268.590-92        | teste1@email.com.br      | (43)12578-5854  | Sucesso               |
        | Lilian Almeida           | 012.345.678-90        | lilian@email.com.br      | (11)91234-5678  | Sucesso               |
        | Pizzaria Nobre           | 04.248.805/0001-10    | pizzarianobre@email.com  | (21)11111-1111  | Sucesso               |
