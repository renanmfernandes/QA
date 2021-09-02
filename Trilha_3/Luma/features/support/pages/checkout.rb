class Checkout
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @nome_companhia = Faker::Company.name
    @rua = Faker::Address.street_name
    @numero_rua = Faker::Address.building_number
    @complemento_rua = Faker::Address.secondary_address
    @cidade = Faker::Address.city
    @cep = Faker::Address.postcode
    @telefone = Faker::PhoneNumber.cell_phone_with_country_code
  end

  def finalizar_pedido
    sleep 5
    find(EL["luma_btn_show_carrinho"]).click
    find(EL["luma_btn_checkout_1"]).click
    assert_no_selector(EL["luma_loader_checkout"])
  end

  def preencher_informacoes_checkout
    verificar_endereço = has_css?(EL["luma_campo_telefone"], wait: 2)
    if verificar_endereço == true
      find(EL["luma_campo_nome"]).set @nome_companhia
      find(EL["luma_campo_rua_nome_1"]).set @rua
      find(EL["luma_campo_rua_numero"]).set @numero_rua
      find(EL["luma_campo_rua_nome_2"]).set @complemento_rua
      find(EL["luma_campo_cidade"]).set @cidade
      find(EL["luma_campo_pais"]).click
      find(EL["luma_campo_estado"]).click
      find(EL["luma_campo_cep"]).set @cep
      find(EL["luma_campo_telefone"]).set @telefone
      assert_no_selector(EL["luma_loader"])
    end
    first(EL["luma_btn_radio"]).click
    find(EL["luma_btn_continue"]).click
    assert_no_selector(EL["luma_loader"])
    find(EL["luma_btn_checkout_2"]).click
    assert_no_selector(EL["luma_loader"])
  end
end
