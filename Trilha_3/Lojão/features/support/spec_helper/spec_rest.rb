module REST

    def usuario
        Rest::Usuario.new
    end

    def login
        Rest::Login.new
    end

    def produto
        Rest::Produto.new
    end
end