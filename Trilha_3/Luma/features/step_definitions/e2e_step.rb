Dado("que estou com um usuario autenticado no site") do
    find(".authorization-link", text: "Sign In").click
    find("#email").set "roni_cost@example.com"
    find("#pass").set "roni_cost3@example.com"
    find("#send2").click
  end
  
  Dado("pesquisar pelo produto SKU {string} e adicionar no carrinho") do |sku|
    find("#search").set sku
    find("#search").native.send_keys(:enter)
    find(".product-item-link").click
    find("#product-addtocart-button").click
    sleep 2
  end
  
  Quando("finalizar a compra") do
    find(".showcart").click
    assert_selector("#top-cart-btn-checkout")
    find("#top-cart-btn-checkout").click
    assert_no_selector(".loader")
  end
  
  Quando("preenchendo com as informaçoes de endereço, metodo de envio, metodo de pagamento") do
    verificar_endereço = has_css?("input[name='telephone']", wait: 2)
      if verificar_endereço == true
      find("input[name='company']").set Faker::Company.name
      find("input[name='street[0]']").set Faker::Address.street_name
      find("input[name='street[1]']").set Faker::Address.building_number
      find("input[name='street[2]']").set Faker::Address.secondary_address
      find("input[name='city']").set Faker::Address.city
      find("select[name='country_id'] option[value='BR']").click
      find("select[name='region_id'] option[value='508']").click
      find("input[name='postcode']").set Faker::Address.postcode
      find("input[name='telephone']").set Faker::PhoneNumber.cell_phone_with_country_code
      assert_no_selector(".loader")
      end
      first("input[class='radio']").click
      find("button[data-role='opc-continue']").click
      assert_no_selector(".loader")
      find("button[class*='checkout']").click
      assert_no_selector(".loader")
      
  end
  
  Entao("o cadastro sera gerado com sucesso") do
    order = find(".base").text
    expect(order).to eql "Thank you for your purchase!"
    puts find(".order-number").text
  end
