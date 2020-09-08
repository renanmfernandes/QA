Dado("que o usuario esta na pagina de login do chat da Stelo") do
    visit "https://avi.stelo.com.br/pt_BR/avi.html"
  end
  
  Quando("entrar com NOME {string}, CPF {string}, E-MAIL {string} e TELEFONE {string}") do |name01, cpf01, email01, phone01|
    find("#nome").set name01
    find("#cpfCnpj").set cpf01
    find("#email").set email01
    find("#telefone").set phone01
    find("#btnSend").click
  end
  
  Entao("visualizo a mensagem de saudacao do assistente virtual") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entrar com NOME {string}, CNPJ {string}, E-MAIL {string} e TELEFONE {string}") do |string, string2, string3, string4|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entrar com NOME {string}, CPF , E-MAIL {string} e TELEFONE {string}") do |string, string2, string3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("sera exibida a mensagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entrar com NOME {string}, CPF {string}, E-MAIL  e TELEFONE {string}") do |string, string2, string3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("entrar com NOME , CPF {string}, E-MAIL {string} e TELEFONE {string}") do |string, string2, string3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("sera exibida as mensagens {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end