module Rest

    class Produto
        include HTTParty

        headers "Content-Type" => "application/json" 
        base_uri EL["base_uri"]

        def post_produto
            self.class.post("/produto")
        end

        def get_buscar_produtos
            self.class.get("/produto")
        end

        def get_buscar_produto(id)
            self.class.get("/produto/#{id}")
        end
    end
end