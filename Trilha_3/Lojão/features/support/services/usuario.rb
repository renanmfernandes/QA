module Rest

  class Usuario
    include HTTParty

    headers "Content-Type" => "application/json"
    base_uri EL["base_uri"]

    def post_adicionar_usuario
      self.class.post("/usuario", :body => gerar_dados_body)
    end

    def gerar_dados_body
      nome = Faker::Name.first_name
      sobrenome = Faker::Name.last_name
      ramdon = rand(99)
      body = {
        "usuarionome": "#{nome} #{sobrenome}",
        "usuariologin": "#{nome}.#{sobrenome}.#{ramdon}",
        "usuariosenha": "123456",
      }.to_json
      # $stdout.puts "\t#{body}"
      return body
    end

  end
  
end
