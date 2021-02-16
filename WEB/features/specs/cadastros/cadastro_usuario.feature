#language: pt

Funcionalidade: Cadastro de usuário
    Para que eu possa visualizar o sistema
    Sendo um usuário não cadastrado
    Posso cadastrar um novo usuário

    @novo_usuario 
    Cenario: Novo usuário

        Dado que o usuário queira criar um novo cadastro
        Quando se completa o cadastro
        Entao deve ser exibida a tela com a lista de usuários


    @tentativas_cadastro_falha 
    Esquema do Cenario: Tentar cadastrar usuário com dados errados

        Quando um usuário submeter suas credenciais "<usuario>", "<senha>" e "<confirma_senha>"
        Então deve ver uma mensagem de alerta com o texto "<texto>"

        Exemplos:
            | usuario         | senha  | confirma_senha | texto                 |
            | rafael_carvalho | pwd123 | pwd123         | Usuário já cadastrado |
            | rafael_carvalho | pwd    | pwd123         | Senhas não combinam   |
            | rafael_carvalho | pwd123 | pwd            | Senhas não combinam   |
