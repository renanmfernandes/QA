Quando("faco a requisicao pela lista de produtos") do
    @response = HTTParty.get @produto, :body => @body, :headers => { "token" => "#{@token}", "Content-Type" => "application/json" }
    puts @response.body
  end