with ("clicar em {string}") do |var|
    if var == "Criar uma Conta"
        find ("#criar_uma_conta").click
    else 
        find ("#cadastrar").click
end
