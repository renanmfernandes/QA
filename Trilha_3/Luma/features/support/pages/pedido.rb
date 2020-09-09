class Login
    include Capybara::DSL
    include RSpec::Matchers

    def acessar_chatbot
        visit "https://avi.stelo.com.br/pt_BR/avi.html"
    end

    def preecher_formulario(nome, cpf_cnpj, email, telefone)
        find(EL["login_campo_nome"]).set nome
        find(EL["login_campo_cpfcnpj"]).set cpf_cnpj
        find(EL["login_campo_email"]).set email
        find(EL["login_campo_telefone"]).set telefone
        find(EL["login_btn_entrar"]).click
    end

    def verificar_mensagem(mensagem)
        expect(page).to have_text mensagem
    end
end
