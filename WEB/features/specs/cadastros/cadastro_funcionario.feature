#language: pt

Funcionalidade: Cadastro de funcionários
    Para que eu possa incluir novos funcionários no sistema
    Sendo um usuário logado
    Posso cadastrar um novo funcionário para registro

    Contexto: criando novo usuário para incluir novo funcionário
        Dado que o usuário queira criar um novo cadastro
        Quando se completa o cadastro
        Entao deve ser exibida a tela com a lista de usuários

    @novo_funcionario
    Cenario: Cadastrar novo funcionário
        Dado que o usuário queira cadastrar um novo funcionário
        Quando o usuário realiza o cadastro
        Entao deve ser exibida a tela com a lista de usuários
