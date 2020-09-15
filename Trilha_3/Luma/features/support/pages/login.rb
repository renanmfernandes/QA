class Login
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
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
end