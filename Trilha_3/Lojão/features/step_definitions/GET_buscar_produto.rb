Quando("faco a requisicao com o {string} do produto") do |id|
  id = 9062
  @response = produto.get_buscar_produto(id)
  puts @response.body
end
