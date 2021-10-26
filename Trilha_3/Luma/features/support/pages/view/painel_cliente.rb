class Painel_cliente
  include Capybara::DSL
  include RSpec::Matchers

  def verificar_mensagem
    elemento = find(".message-success").text
    expect(elemento).to eql "Thank you for registering with Main Website Store."
  end
end
