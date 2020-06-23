# Quando("clicar em {string}") do |_string|
#   #   if criar == "Criar uma Conta"
#   # find("a[href='https://magento.nublue.co.uk/didi-sport-watch.html']").click
#   click_link_or_button "Create"
#   #   else
#   #     find "#cadastrar".click
#   #   end
# end

# Quando("preencher as informaçoes {string}, {string}") do |_string, _string2|
#   find("#firstname").set Faker::Name.first_name
#   find("#lastname").set Faker::Name.last_name
#   find("#is_subscribed").check
#   find("#email_address").set Faker::Internet.email
#   find("#password").set "Renan123456"
#   find("#password-confirmation").set "Renan123456"
#   find("button[class='action submit primary']").click
# end

# Entao("sera retornada a mensagem {string}") do |variavel|
#   puts variavel
#   elemento = find(".message-success").text
#   expect(elemento).to eql variavel
# end

Dado("que estou na pagina home do site Luma") do
  visit "https://magento.nublue.co.uk/"
end

Quando("criar uma nova conta") do
  click_link_or_button "Create"
end

Quando("preencher as informaçoes de acesso") do
  find("#firstname").set Faker::Name.first_name
  find("#lastname").set Faker::Name.last_name
  find("#is_subscribed").check
  find("#email_address").set Faker::Internet.email
  find("#password").set "Renan123456"
  find("#password-confirmation").set "Renan123456"
  find("button[class='action submit primary']").click
end

Entao("validado conta criada com sucesso") do
  elemento = find(".message-success").text
  expect(elemento).to eql "Thank you for registering with Main Website Store."
end

Quando("pesquisar pelo produto SKU {string} no campo de pesquisa") do |string|
  find("#search").set "24-WG02"
  find("#search").native.send_keys(:enter)
end

Quando("acessar a tela do produto pesquisado") do
  click_link_or_button "Didi Sport Watch", match: :first
end

Entao("valido o nome do produto {string}") do |string|
  find(".base", text: "Didi Sport Watch")
end