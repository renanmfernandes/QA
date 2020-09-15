class Cadastro
    include Capybara::DSL
    include RSpec::Matchers

    def initialize
        @primeiro_nome=Faker::Name.first_name
        @segundo_nome=Faker::Name.last_name
        @email=Faker::Internet.email
        @senha="Faker123456"
    end

    def botao_criar_conta
        click_link_or_button "Create"
    end

    def acessa_site(site)
        visit(EL[site])
    end

    def criar_conta
        # find(EL["luma_bnt_criar"]).click
        find(EL["luma_primeiro_nome"]).set @primeiro_nome
        find(EL["luma_segundo_nome"]).set @segundo_nome
        find(EL["luma_inscrever"]).check
        find(EL["luma_email_cadastro"]).set @email
        find(EL["luma_senha_cadastro"]).set @senha
        find(EL["luma_senha_confirmacao"]).set @senha
        find(EL["luma_btn_confirmacao"]).click
    end

end

