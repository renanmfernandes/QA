Funcionalidade: Backup das conversas do WhatsApp no Android

Contexto:
    Dado que o usuario esta na tela de configuraçoes do backup das conversas do WhatsApp
    E deseja fazer o backup

    Cenario: Backup das conversas do WhatsApp apenas local
            Quando a opção "conta do Google" estiver sem e-mail configurado
            Entao o WhatsApp fara apenas o backup das conversas no armazenamento local

    Cenario: Backup das conversas do WhatsApp local e no Google Drive
            Quando a opção "conta do Google" estiver e-mail "email@gmail.com" configurado
            Entao o WhatsApp fara o backup das conversas no armazenamento local e no Google Drive da conta configurada

    Cenario: Tentativa de backup das conversas do WhatsApp apenas local sem espaço de armazenamento suficiente
            Dado o dispositivo sem espaço de armazenamento suficiente
            Quando a opção "conta do Google" estiver sem e-mail configurado
            Entao o WhatsApp exibira uma mensagem ""Nao foi possivel concluir o backup porque o seu Google Drive nao tem espaço suficiente. Libere espaço no seu aparelho para o backup. Toque para mais informaçoes"

    Cenario: Tentativa de backup das conversas do WhatsApp local e sem espaço de armazenamento suficiente no Google Drive
            Dado o dispositivo sem espaço de armazenamento suficiente no Google Drive
            Quando a opção "conta do Google" estiver e-mail "email@gmail.com" configurado
            Entao o WhatsApp exibira uma mensagem "Nao foi possivel concluir o backup porque o seu Google Drive nao tem espaço suficiente. Libere espaço no Google Drive para o backup. Toque para mais informaçoes"

    Cenario: Tentativa de backup das conversas do WhatsApp local e no Google Drive sem conexão com a internet
            Dado o dispositivo sem conexao com a internet
            Quando a opção "conta do Google" estiver e-mail "email@gmail.com" configurado
            Entao o WhatsApp exibira uma mensagem "Nao foi possivel completar o backup. Certifique-se de que seu aparelho esta conectado a internet e se voce tem espaco livre no Google Drive "
