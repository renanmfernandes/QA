Quando("faco a requisicao com o {string} do produto") do |produtoid|
    @produtoid = 8265
    @request = produto.get_buscar_produto
    puts @response.body
end