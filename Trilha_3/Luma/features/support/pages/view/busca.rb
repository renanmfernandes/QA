class Busca
    include Capybara::DSL
    include RSpec::Matchers

    def busca_produto(sku)
        find(EL["luma_pesquisa"]).set (sku)
        find(EL["luma_pesquisa"]).send_keys :enter
    end

    def clicar_produto
        click_link_or_button "Didi Sport Watch", match: :first
        assert_no_selector(EL["luma_loader"])
    end

    def verificar_busca(model)
        product = find(EL["luma_mensagem_base"]).text
        expect(product).to eql model
    end

end 