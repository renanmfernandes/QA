Funcionalidade: Login no chat da Stelo
 

  Contexto:
    Dado que estou na página de chat da Stelo
   

    Cenário: Login no chat Stelo com credenciais válidas
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clico em "ENTRAR NO CHAT"
        Então Espero que seja redirecionado para a página "Chat"
    
        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    |

        
    Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clico em "ENTRAR NO CHAT"
        Então Então Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo sem NOME / ESTABELECIMENTO válido
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clico em "ENTRAR NO CHAT"
        Então Então Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"


        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo com CPF / CNPJ inválido
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clico em "ENTRAR NO CHAT"
        Então Então Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo com E-MAIL inválidos
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clico em "ENTRAR NO CHAT"
        Então Então Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo com TELEFONE inválidos
        Quando eu preencho os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clico em "ENTRAR NO CHAT"
        Então Então Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |