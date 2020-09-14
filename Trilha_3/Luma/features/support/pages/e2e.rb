class E2e
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        @nome_companhia=Faker::Company.name
        @rua=Faker::Address.street_name
        @numero_rua=Faker::Address.building_number
        @complemento_rua=Faker::Address.secondary_address
        @cidade=Faker::Address.city
        @cep=Faker::Address.postcode
        @telefone=Faker::PhoneNumber.cell_phone_with_country_code
        @email="roni_cost@example.com"
        @senha="roni_cost3@example.com"
    end

    def acessa_site(site)
        visit(EL[site])
    end

    def login_luma
        find(EL["luma_btn_singin"]).click
        find(EL["luma_email"]).set @email
        find(EL["luma_senha"]).set @senha
        find(EL["luma_btn_login"]).click
    end

    def busca_produto(sku)
        find(EL["luma_pesquisa"]).set (sku)
        find(EL["luma_pesquisa"]).send_keys :enter
    end

    def add_carrinho
        find(EL["luma_btn_produto"]).click
        find(EL["luna_btn_add_carinho"]).click
        sleep 2
    end

    def finalizar_pedido
        find(EL["luma_btn_show_carrinho"]).click
        find(EL["luma_btn_checkout_1"]).click
        assert_no_selector(EL[".loader"])
    end

    def preencher_pedido
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
            assert_no_selector(EL[".loader"])  
        end
            find(EL["luma_btn_radio"]).click
            find(EL["luma_btn_continue"]).click
            assert_no_selector(EL[".loader"])
            find(EL["luma_btn_checkout_2"]).click
            assert_no_selector(EL[".loader"])
    end

    def confirmacao_pedido
        order = find(".base").text
        expect(order).to eql "Thank you for your purchase!"
        puts find(".order-number").text
    end

end 