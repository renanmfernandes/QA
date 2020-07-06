Funcionalidade: Login no chat da Stelo
 

  Contexto:
    Dado que o usuario esta na pagina de login do chat da Stelo
   
    Cenario: Login no chat da Stelo com credencias de pessoa fisica
            Quando entrar com NOME "Pedro Almeida", CPF "012.345.678-90", E-MAIL "lilian@email.com.br" e TELEFONE "(11)91234-5678"
            Entao visualizo a mensagem de saudacao do assistente virtual

    Cenario: Login no chat da Stelo com credencias de pessoa juridica
            Quando entrar com NOME "Pizzaria Nobre", CNPJ "04.248.805/0001-00", E-MAIL "pizzarianobre@email.com" e TELEFONE ""
            Entao visualizo a mensagem de saudacao do assistente virtual

            
    Esquema do Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatorios
        Quando entrar com NOME <NOME_ESTABELECIMENTO>, CPF <CPF_CNPJ>, E-MAIL <E-MAIL> e TELEFONE "(11)91234-5678"
        Entao sera exibida a mensagem "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio."
    
            Exemplos:
            | NOME_ESTABELECIMENTO     | CPF_CNPJ              | E-MAIL                     | 
            | "Fernanda Gonçalves"     |                       | "fernanda@email.com.br"    | 
            | "Renato Santos"          | "00.128.655/0035-00"  |                            |
            |                          | "572.268.590-92"      | "teste1@email.com.br"      |


    Esquema do Cenário: Tentativa de login no chat Stelo com CPF inválido
        Quando entrar com NOME "Lilian Almeida", CPF <CPF_CNPJ>, E-MAIL "lilian@email.com.br" e TELEFONE "(11)91234-5678"
        Entao sera exibida a mensagem "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio."
    
            Exemplos:
            | CPF_CNPJ              | 
            | "000.005.412-55"      | 
            | "123.45X.B78-00"      | 
            | "572.268.590"         |

    
    Esquema do Cenário:: Tentativa de login no chat Stelo com CNPJ inválido
        Quando entrar com NOME "Lilian Almeida", CPF <CPF_CNPJ>, E-MAIL "lilian@email.com.br" e TELEFONE "(11)91234-5678"
        Entao sera exibida a mensagem "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio."
    
            Exemplos:
            | CPF_CNPJ              | 
            | "0.000.000/0000-00"   | 
            | "0.123.45"            | 
            | "5.268.XBY/0012-00"   | 
 


    Esquema do Cenário: Tentativa de login no chat Stelo com E-MAIL inválidos
        Quando entrar com NOME "Lilian Almeida", CPF "012.345.678-90", E-MAIL <E-MAIL> e TELEFONE "(11)91234-5678"
        Entao sera exibida as mensagens "Email inválido"

            Exemplos:
            | E-MAIL                | 
            | "bety@email.c"        | 
            | "....e@email.com"     |
            | "000@00.00"           |


    Esquema do Cenário: Tentativa de login no chat Stelo com TELEFONE inválidos
        Quando entrar com NOME "Lilian Almeida", CPF "012.345.678-90", E-MAIL "lilian@email.com.br" e TELEFONE <TELEFONE>
        Entao sera exibida as mensagens "Telefone inválido"

            Exemplos:
            | TELEFONE            |
            | "(31) 44444-4"      |
            | "(12) 22"           |
            | "(00) QWERT-YUIO"   |