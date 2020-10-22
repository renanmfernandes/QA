Quando("faco a requisicao com o {string} do produto a ser deletado") do |id|
  id = 8678
  @response = produto.delete_apagar_produto(id)
end
