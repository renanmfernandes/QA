Quando("faco a requisicao com o {string} do produto") do |produtoid|
    @id = 8265
    @response = HTTParty.get ("http://165.227.93.41/lojinha/produto/#{@id}"), :body => @body, :headers => { "token" => "#{@token}", "Content-Type" => "application/json" }
    puts @response.body
  end