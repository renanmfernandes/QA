Quando("faco a requisicao com os novos dados e a {string} do produto a ser alterado") do |id|
  id = 8265
  @response = produto.put_alterar_produto(id)
  puts @response.body
end
