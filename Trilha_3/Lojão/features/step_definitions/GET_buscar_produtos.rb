Quando("faco a requisicao pela lista de produtos") do
  @response = produto.get_buscar_produtos
  puts @response.body
end