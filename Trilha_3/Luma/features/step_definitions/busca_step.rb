  Quando("pesquisar pelo produto SKU {string} no campo de pesquisa") do |sku|
    @busca.busca(sku)
  end
  
  Quando("acessar a tela do produto pesquisado") do
    @busca.clicar_produto
  end
  
  Entao("valido o nome do produto {string}") do |model|
    @busca.verificar_busca(model)
  end
  
