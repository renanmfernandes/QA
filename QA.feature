Funcionalidade: Login no chat da Stelo
 

  Contexto:
    Dado que estou na pagina de chat da Stelo
   

    Cenario: Login no chat Stelo com credenciais validas
        Quando preenchido os campos "NOME / ESTABELECIMENTO", "CPF / CNPJ", "E-MAIL", "TELEFONE" com os devidos dados
        E clicado em "ENTRAR NO CHAT"
        Entao sera redirecionado para a pagina "Chat" 

        Exemplo de Cenario: Login no chat Stelo com credenciais validas
            Quando preenchido com "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO, "<CPF / CNPJ>" no campo CPF / CNPJ, "<E-MAIL>" no campo E-MAIL, "<TELEFONE>" no campo TELEFONE
            E clicado em "ENTRAR NO CHAT"
            Entao sera redirecionado para a pagina "Chat"
        
            Exemplos:
            | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            |
            | "Lilian Almeida"           | "012.345.678-90"        | "lilian@email.com.br"      | "(11)91234-5678"    |
            | "Pizzaria Nobre"           | "04.248.805/0001-00"    | "pizzarianobre@email.com"  | "(21)11111-1111"    |
            | "....(21215)"              | "049.750.385-95"        | "jptoid@teste.com.br"      |                     |

            
    Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatorios
        Quando preenchido os campos "NOME / ESTABELECIMENTO", "CPF / CNPJ", "E-MAIL", "TELEFONE" com os devidos dados
        E clicado em "ENTRAR NO CHAT"
        Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio." acima dos campos e o campo "Campo Obrigatorio" em destaque vermelho
    
        Exemplo de Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
            Quando preenchido com "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO, "<CPF / CNPJ>" no campo CPF / CNPJ, "<E-MAIL>" no campo E-MAIL, "<TELEFONE>" no campo TELEFONE
            E clicado em "ENTRAR NO CHAT"
            Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) são de preenchimento obrigatório." acima dos campos e o campo "<Campo Obrigatorio>" em destaque vermelho
           
            Exemplos:
            | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            | Campo Obrigatorio          |
            | "Fernanda Gonçalves"       |                         | "fernanda@email.com.br"    |                     | "CPF / CNPJ"               |
            | "Renato Santos"            | "00.128.655/0035-00"    |                            |                     | "E-MAIL"                   |
            |                            | "572.268.590-92"        | "teste1@email.com.br"      |                     | "NOME / ESTABELECIMENTO"   |
 

    
    Cenário: Tentativa de login no chat Stelo com CPF / CNPJ inválido
        Quando preenchido os campos "NOME / ESTABELECIMENTO", "CPF / CNPJ", "E-MAIL", "TELEFONE" com os devidos dados
        E clicado em "ENTRAR NO CHAT"
        Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio." acima dos campos e "CPF/CNPJ inválido" abaixo do campo "CPF / CNPJ"

        Exemplo de Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
            Quando preenchido com "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO, "<CPF / CNPJ>" no campo CPF / CNPJ, "<E-MAIL>" no campo E-MAIL, "<TELEFONE>" no campo TELEFONE
            E clicado em "ENTRAR NO CHAT"
            Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio." acima dos campos e "CPF/CNPJ inválido" abaixo do campo "CPF / CNPJ"


            Exemplos:
            | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                          | TELEFONE            |
            | "Papelaria Lapis"          | "51.545.454/5111-1"     | "lapis@email.com"               | "(00) 00000-0000"   |
            | "Roberto Oliveira"         | "000.000.000-00"        | "robertooliveira@email.com.br"  | "(12) 34567-8910"   | 


    Cenário: Tentativa de login no chat Stelo com E-MAIL inválidos
        Quando preenchido os campos "NOME / ESTABELECIMENTO", "CPF / CNPJ", "E-MAIL", "TELEFONE" com os devidos dados
        E clicado em "ENTRAR NO CHAT"
        Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio." acima dos campos e "Email inválido" abaixo do campo "E-MAIL"

        Exemplo de Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
            Quando preenchido com "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO, "<CPF / CNPJ>" no campo CPF / CNPJ, "<E-MAIL>" no campo E-MAIL, "<TELEFONE>" no campo TELEFONE
            E clicado em "ENTRAR NO CHAT"
            Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio." acima dos campos e "Email inválido" abaixo do campo "E-MAIL"


            Exemplos:
            | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            |
            | "Beatris Costa"            | "371.060.100-22"        | "bety@email.c"             | "(43)12578-5854"    |
            | "Empresa Local ME"         | "24.726.769/0001-50"    | "....e@email.com"          | "(21)98145-4541"    |


    Cenário: Tentativa de login no chat Stelo com TELEFONE inválidos
        Quando preenchido os campos "NOME / ESTABELECIMENTO", "CPF / CNPJ", "E-MAIL", "TELEFONE" com os devidos dados
        E clicado em "ENTRAR NO CHAT"
        Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio." acima dos campos e "Telefone inválido" abaixo do campo "TELEFONE"

        Exemplo de Cenário: Tentativa de login no chat Stelo sem preenchimento de campos obrigatórios
            Quando preenchido com "<NOME / ESTABELECIMENTO>" no campo NOME / ESTABELECIMENTO, "<CPF / CNPJ>" no campo CPF / CNPJ, "<E-MAIL>" no campo E-MAIL, "<TELEFONE>" no campo TELEFONE
            E clicado em "ENTRAR NO CHAT"
            Entao sera exibida as mensagens "Os campos identificados com asteriscos (*) sao de preenchimento obrigatorio." acima dos campos e "Telefone inválido" abaixo do campo "TELEFONE"


            Exemplos:
            | NOME / ESTABELECIMENTO     | CPF / CNPJ              | E-MAIL                     | TELEFONE            |
            | "Henrique Amarantos"       | "706.871.712-88"        | "henrique@email.com"       | "(31) 44444-4"      |
            | "Amelia Souza"             | "012.345.678-90"        | "amelia@email.com.br "     | "(12) 22"           |