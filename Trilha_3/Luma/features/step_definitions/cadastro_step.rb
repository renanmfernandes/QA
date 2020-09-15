Dado("que estou na pagina home do site {string}") do |site|
    @cadastro.acessa_site(site)
  end
    
    Quando("criar uma nova conta") do
      @cadastro.botao_criar_conta
    end
    
    Quando("preencher as informaçoes de acesso") do
      @cadastro.criar_conta
    end
    
    Entao("validado conta criada com sucesso") do
      @painel_cliente.verificar_mensagem
    end