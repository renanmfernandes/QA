Quando("faco a requisicao com o {string} do produto a ser deletado") do |id|
  id = 8719
  @response = produto.delete_apagar_produto(id)
  puts @response.body
end

Entao("valido a exclusao no retorno da resposta {string}") do |status_code|
  puts @response.parsed_response
  expect(@response.code).to eql status_code.to_i
end