Funcionalidade: Aprovação de credito a clientes

Contexto:
    Dado que o usuario efetuou um pedido de credito

    Esquema do Cenario: Credito ao cliente
        Quando solicitado os dados ao cliente
        E os dados recebidos foram suficientes
        E o credito e <Resultado>
        Entao o credito e <Veredito> o avisado ao cliente

        Exemplos:
        | "Resultado"     | "Veredito"    |
        |  Aprovado       |  Liberado     |
        |  Reprovado      |  Negado       |

    Cenario: Credito ao cliente aprovado
        Quando solicitado os dados ao cliente
        E os dados recebidos foram suficientes
        E o credito e aprovado
        Entao o credito e liberado e avisado ao cliente

    Cenario: Credito ao cliente negado
        Quando solicitado os dados ao cliente
        E os dados recebidos foram suficientes
        E o credito e negado
        Entao e avisado o cliente
 
    Cenario: Credito ao cliente aprovado apos envio de mais dados
        Quando solicitado os dados ao cliente
        E os dados recebidos são insuficientes
        Entao solicitar ao cliente enviar mais dados
        E os dados recebidos foram suficientes
        E o credito e aprovado
        Entao o credito e liberado e avisado ao cliente

    Cenario: Credito ao cliente negado apos envio de mais dados
        Quando solicitado os dados ao cliente
        E os dados recebidos são insuficientes
        Entao solicitar ao cliente enviar mais dados
        E os dados recebidos foram suficientes
        E o credito e negado
        Entao e avisado o clientes

