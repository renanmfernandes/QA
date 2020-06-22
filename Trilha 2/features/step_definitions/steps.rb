# frozen_string_literal: true

# #with ("clicar em {string}") do |var|
##    if criar == "Criar uma Conta"
##        find ("#criar_uma_conta").click
##    else
##        find ("#cadastrar").click
## end

Dado("que estou na pagina home do site Luma") do
  visit "https://magento.nublue.co.uk/"
end

Quando("clicar em {string}") do |_string|
  #   if criar == "Criar uma Conta"
  find("a[href='https://magento.nublue.co.uk/customer/account/create/']").click
  #   else
  #     find "#cadastrar".click
  #   end
end

Quando("preencher as informaçoes {string}, {string}") do |_string, _string2|
  find("#firstname").set "Renan"
  find("#lastname").set "Fernandes"
  find("#is_subscribed").check
  find("#email_address").set "teste@email.com.br"
  find("#password").set "Renan123456"
  find("#password-confirmation").set "Renan123456"
  find("button[class='action submit primary']").click
end

Entao("sera retornada a mensagem {string}") do |_string|
  expect(find(".messages").text).to eql "Thank you for registering with Main Website Store."
end
