Dado("que estou com um usuario autenticado no site") do
  @login.login_luma
end

Dado("pesquisar pelo produto SKU {string} e adicionar no carrinho") do |sku|
  @busca.busca_produto(sku)
  @produto.add_carrinho
end

Quando("finalizar a compra") do
  @checkout.finalizar_pedido
end

Quando("preenchendo com as informaçoes de endereço, metodo de envio, metodo de pagamento") do
  @checkout.preencher_informacoes_checkout
end

Entao("o pedido sera gerado com sucesso") do
  @pedido_gerado.confirmacao_pedido
end
