#language: pt

Funcionalidade: Cadastro de Usuario e Pedido de um produto

Contexto: 
    Dado que estou na pagina home do site Luma

@cadastro
Cenario: Cadastro de um usuario com sucesso
    Quando criar uma nova conta
    E preencher as informaçoes de acesso
    Entao validado conta criada com sucesso

@pesquisa
Cenario: Pesquisa por um produto com sucesso
    Quando pesquisar pelo produto SKU "24-WG02" no campo de pesquisa
    E acessar a tela do produto pesquisado
    Entao valido o nome do produto "Didi Sport Watch"

@pedido
Cenario: Geral pedido
    Dado que estou com um usuario autenticado no site
    Quando pesquisar pelo produto SKU "24-MB02"
    E adicionar o produto carrinho
    E iniciar o checkout preenchendo com as informaçoes de endereço, metodo de envio, metodo de pagamento
    Entao sera efetuada a compra do produto pesquisado

# Cenario: Geral pedido
#     Dado que estou autenticado com o usuario "roni_cost@example.com" no site
#     Quando pesquisar pelo produto SKU "24-WG02"
#     E na tela do produto pesquisado clicar em "Add To Cart"
#     E sera retornada a mensagem "You added Didi Sport Watch to your shopping cart."
#     E ao acessar o carrinho clicar em "Proceed to checkout"
#     E preencher com as informaçoes de "Shipping Address", "Shipping Methods"
#     E preencher com as informaçoes de "Payment Method"
#     E clicar em "Place Order"
#     Entao sera retornada a mensagem "Thank you for your purchase!" e o numero de ordem "000000001"