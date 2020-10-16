Quando("faco a requisicao com os dados {string} e {string}") do |user, senha|
    @response = login.post_fazer_login
  end
  
Entao("e retornado a resposta {string} e o {string} de autenticacao") do |status_code, token|
     puts @response.parsed_response["message"]
     puts @response.parsed_response["data"]["token"]
     expect(@response.code).to eql status_code.to_i
  end