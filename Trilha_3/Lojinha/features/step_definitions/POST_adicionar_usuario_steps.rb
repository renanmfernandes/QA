Dado("que estou na requisição {string}") do |url|
    @url = "http://165.227.93.41/lojinha/usuario"
  end
  
  Quando("faco a requisicao com os dados {string}, {string} e {string}") do |nome, login, senha|
    @body=  {
            "usuarionome": "Renan Souza",
            "usuariologin": "renan.souza",
            "usuariosenha": "123456"
            }.to_json
    @response = HTTParty.post @url, :body => @body, :headers => { "Content-Type" => "application/json" }
  end
  
  Entao("e retornado a resposta {string}") do |status_code|
    puts @response.parsed_response["message"]
    expect(@response.code).to eql status_code.to_i
  end
  
  Entao("valido a mensagem {string}") do |sucess|
    expect(@response.parsed_response["message"]).to eql sucess  
  end