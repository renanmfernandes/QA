module Rest

  class Produto
    include HTTParty

    headers "Content-Type" => "application/json"
    base_uri EL["base_uri"]

    def post_adicionar_produto
      self.class.post("/produto", :body => gerar_dados_produto)
    end

    def get_buscar_produtos
      self.class.get("/produto")
    end

    def get_buscar_produto(id)
      self.class.get("/produto/#{id}")
    end

    def gerar_dados_produto
      body = {
        "produtonome": "Nintendo Wii",
        "produtovalor": 1599.00,
        "produtocores": [
          "Preto",
          "branco",
        ],
        "componentes": [
          {
            "componentenome": "Controle Nintendo Wii",
            "componentequantidade": 2,
          },
          {
            "componentenome": "Cabo de força Nintendo Wii",
            "componentequantidade": 1,
          },
        ],
      }.to_json
    end

  end
  
end
