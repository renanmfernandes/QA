Dado("que o usuario esta na pagina de login do chat da Stelo") do
    @login.acessar_chatbot
  end
  
  Quando("entrar com NOME {string}, CPF_CNPJ {string}, E-MAIL {string} e TELEFONE {string}") do |nome, cpf_cnpj, email, telefone|
    @login.preecher_formulario(nome, cpf_cnpj, email, telefone)
  end
  
  Entao("visualizo a mensagem de saudacao do assistente virtual") do
    mensagem = "Estamos enfrentando problemas sistêmicos, favor retornar seu contato em breve."
    @login.verificar_mensagem(mensagem)
  end

  Entao("sera exibida a mensagem {string}") do |mensagem|
    @login.verificar_mensagem(mensagem)
  end