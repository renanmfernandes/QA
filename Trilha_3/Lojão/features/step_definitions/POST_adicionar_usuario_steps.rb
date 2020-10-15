Dado("que estou na API lojinha") do
    # @adicionar_usuario = usuario.post_adicionar_usuario
  end
  
  Quando("faco a requisicao com os dados {string}, {string} e {string}") do |nome, login, senha|
    @body=  {
            "usuarionome": "Renan Lucas",
            "usuariologin": "renan.lucas",
            "usuariosenha": "123456"
            }.to_json
    @response = HTTParty.post usuario.post_adicionar_usuario, :body => @body
  end
  
  Entao("e retornado a resposta {string}") do |status_code|
    puts @response.parsed_response["message"]
    expect(@response.code).to eql status_code.to_i
  end
  
  Entao("valido a mensagem {string}") do |sucess|
    expect(@response.parsed_response["message"]).to eql sucess  
  end