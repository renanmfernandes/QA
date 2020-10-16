module Rest

    class Login
        include HTTParty
            
        headers "Content-Type" => "application/json"
        base_uri EL["base_uri"]

            def post_fazer_login
                self.class.post("/login", :body => dados_body_login)
            end

            def dados_body_login
                return body =  {
                    "usuariologin": "renan.fernandes",
                    "usuariosenha": "123456"
                     }.to_json
            end
    end
end