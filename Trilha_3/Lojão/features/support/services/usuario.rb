module Rest

    class Usuario
        include HTTParty
            
        headers "Content-Type" => "application/json"
        base_uri "http://165.227.93.41/lojinha"

            def post_adicionar_usuario
                self.class.post("/usuario")
            end
    end
end