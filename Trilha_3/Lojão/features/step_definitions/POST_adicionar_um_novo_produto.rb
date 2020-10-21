Quando("estou autenticado na API") do
  @response = login.post_fazer_login
  @token = @response.parsed_response["data"]["token"]
end

Quando("faco a requisicao com os dados do produto") do
  @response = produto.post_adicionar_produto
  puts @response.body
end