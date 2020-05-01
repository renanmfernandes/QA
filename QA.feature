Funcionalidade: Login no chat da Stelo
 

  Contexto:
    Dado que estou na pagina de chat da Stelo
   

    Cenario: Login no chat Stelo com credenciais validas
        Quando preenchido os campos "NOME / ESTABELECIMENTO", "CPF / CNPJ", "E-MAIL", "TELEFONE" com os devidas credenciais validas
        E clicado em "ENTRAR NO CHAT"
        Entao sera redirecionado para a pagina "Chat"
    
    Exemplo de Cenario: Login no chat Stelo com credenciais validas
        Quando preenchido com "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO, "<CPF / CNPJ >" no campo CPF / CNPJ, "<E-MAIL>" no campo E-MAIL, "<TELEFONE>" no campo TELEFONE
        E clicado em "ENTRAR NO CHAT"
        Entao sera redirecionado para a pagina "Chat"
    
        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    |

        
    Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
        Quando preenchido com "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clicado em "ENTRAR NO CHAT"
        Entao Entao Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"
    
    Exemplo de Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
        Quando preenchido com "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO, "<CPF / CNPJ >" no campo CPF / CNPJ, "<E-MAIL>" no campo E-MAIL, "<TELEFONE>" no campo TELEFONE
        E clicado em "ENTRAR NO CHAT"
        Entao Entao Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo sem NOME / ESTABELECIMENTO válido
        Quando preenchido os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clicado em "ENTRAR NO CHAT"
        Entao Entao Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"


        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo com CPF / CNPJ inválido
        Quando preenchido os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clicado em "ENTRAR NO CHAT"
        Entao Entao Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo com E-MAIL inválidos
        Quando preenchido os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clicado em "ENTRAR NO CHAT"
        Entao Entao Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |


    Cenário: Tentativa de login no chat Stelo com TELEFONE inválidos
        Quando preenchido os campos "<NOME / ESTABELECIMENTO>", "<CPF / CNPJ >", "<E-MAIL>", "<TELEFONE>"
        E clicado em "ENTRAR NO CHAT"
        Entao Entao Espero que uma mensagem "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." seguido de "<ResultadoEsperado>"

        Exemplos:
        | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | ResultadoEsperado    |
        | "."                        | "572.268.590-92"        | "teste1@email.com.br"      | "(43)12578-5854"    | "Chat"               |
        | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    | "Chat"               |
        | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    | "Chat"               |