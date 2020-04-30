Funcionalidade: Login no chat da Stelo
 

  Contexto:
    Dado que estou na página de chat da Stelo
   

    Cenário: Login no chat Stelo com credenciais válidas
        Quando eu preencho os campos "Lilian Almeida", "012.345.678-90", "lilian@email.com.br", "(11)91234-5678" e clico em "ENTRAR NO CHAT"
        Então Espero que seja redirecionado para a página "Chat"
    

    Cenário: Login no chat Stelo com credenciais inválidas
        Quando eu preencho os campos com os dados "João Carlos", "049.750.385-95", "joão@email.com", "sem número de telefone" e clico em "ENTRAR NO CHAT"
        Então Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."


    Esquema de Cenário: Login no chat Stelo
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>" e clico em "ENTRAR NO CHAT"
        Então Espero que seja redirecionado para a página "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado       |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Esquema de Cenário: Login no chat Stelo
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>" e clico em "ENTRAR NO CHAT"
        Então Espero que uma mensagem "<ResultadoEsperado>"    
   
        Exemplos:
        | NOME / ESTABELECIMENTO   | CPF / CNPJ              | E-MAIL                     | TELEFONE          | ResultadoEsperado                                                                  |
        | "João Carlos"            | "049.750.385-95"        | "joão@email.com"           |                   | "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."     |
        | "Fernanda Gonçalves"     | "123.456.789-00"        | "fernanda@email.co.br"     |                   | "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."     |
        | "Renato Santos"          | "00.128.655/0035-00"    | "renato@email.c"           |                   | "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."     |
        | "Amelia Souza"           | "012.345.678-9"         | "amelia@email.com.br"      | "(12)22"          | "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."     |
        | "Henrique Amarantos"     | "706.871.712-88"        | "hentique@email.com"       | "(31)444-444"     | "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."     |
        |                          | "358.922.850-49"        | "nada@email.com"           | "(57)444-44"      | "Os campos identificados com asteriscos (*) são de preenchimento obrigatório."     |