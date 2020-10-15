Quando("faco a requisicao com os dados {string} e {string}") do |login, senha|
    @body=  {
            "usuariologin": "renan.fernandes",
            "usuariosenha": "123456"
             }.to_json
    @response = HTTParty.post @login, :body => @body, :headers => { "Content-Type" => "application/json" }
  end
  
Entao("e retornado a resposta {string} e o {string} de autenticacao") do |status_code, token|
     puts @response.parsed_response["message"]
     puts @response.parsed_response["data"]["token"]
     expect(@response.code).to eql status_code.to_i
  end