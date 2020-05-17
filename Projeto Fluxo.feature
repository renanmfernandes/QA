Funcionalidade: Aprovação de credito a clientes

Contexto:
    Dado que o usuario efetuou um pedido de credito

    Cenario: Credito ao cliente aprovado
            Quando solicitado os dados ao cliente
            E os dados recebidos foram suficientes
            E o credito e aprovado
            Entao o credito e liberado e avisado ao cliente

    Cenario: Credito ao cliente reprovado
            Quando solicitado os dados ao cliente
            E os dados recebidos foram suficientes
            E o credito nao e aprovado
            Entao e avisado o cliente
 
    Cenario: Credito ao cliente aprovado apos envio de mais dados
            Quando solicitado os dados ao cliente
            E os dados recebidos não foram suficientes
            Entao solicitar ao cliente enviar mais dados
            E o processo de aprovacao foi concluido com sucesso
            Entao o credito e liberado e avisado ao cliente

    Cenario: Credito ao cliente reprovado apos envio de mais dados
            Quando solicitado os dados ao cliente
            E os dados recebidos não foram suficientes
            Entao solicitar ao cliente enviar mais dados

    