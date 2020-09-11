class Busca
    include Capybara::DSL
    include RSpec::Matchers

    def busca(sku)
        find(EL["luma_pesquisa"]).set (sku)
        find(EL["luma_pesquisa"]).send_keys :enter
    end

    def clicar_produto
        click_link_or_button "Didi Sport Watch", match: :first
    end

    def verificar_busca(model)
        product = find(".base").text
        expect(product).to eql model
    end
end 