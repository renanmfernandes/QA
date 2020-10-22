Dado("que estou autenticado na API") do
end

Quando("faco a requisicao com os dados do produto") do
  @response = produto.post_adicionar_produto
  puts @response.body
end
