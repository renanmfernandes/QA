class Pedido_gerado
    include Capybara::DSL
    include RSpec::Matchers

    def confirmacao_pedido
        order = find(EL["luma_mensagem_base"]).text
        expect(order).to eql "Thank you for your purchase!"
        puts find(EL["luma_numero_ordem"]).text
    end

end