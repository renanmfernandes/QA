class Produto
    include Capybara::DSL
    include RSpec::Matchers

    def add_carrinho
        find(EL["luma_btn_produto"]).click
        find(EL["luna_btn_add_carinho"]).click
        sleep 2
    end
end