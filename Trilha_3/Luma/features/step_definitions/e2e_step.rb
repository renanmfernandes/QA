Dado("que estou com um usuario autenticado no site") do
  @e2e.login_luma
end

Dado("pesquisar pelo produto SKU {string} e adicionar no carrinho") do |sku|
  @e2e.busca_produto(sku)
  @e2e.add_carrinho
end

Quando("finalizar a compra") do
  @e2e.finalizar_pedido
end

Quando("preenchendo com as informaçoes de endereço, metodo de envio, metodo de pagamento") do
  @e2e.preencher_pedido
end

Entao("o pedido sera gerado com sucesso") do
  @e2e.confirmacao_pedido
end