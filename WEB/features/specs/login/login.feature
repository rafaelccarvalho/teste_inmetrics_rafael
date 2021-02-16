#language:pt

Funcionalidade: Login
    Para que eu possa acessar o catálogo de funcionários do sistema Inmetrics
    Sendo um usuário cadastrado
    Posso acessar o sistema com meu usuário e senha

    Contexto:
        Dado que o usuário acesse a página principal

    @login_sucesso 
    Cenario: Acessar o portal
        Quando eu submeto meus dados "rafael_carvalho" e "pwd123"
        Então devo poder visualizar os usuários cadastrados

    @login_tentativas
    Esquema do Cenario: Tentar logar

        Quando um usuário submeta suas credenciais "<usuario>" e "<senha>"
        Então deve ver uma mensagem de alerta com o texto "<texto>"

        Exemplos:
            | usuario           | senha  | texto                            |
            | rafael_carvalho   | pwd    | ERRO! Usuário ou Senha inválidos |
            | rafael            | pwd123 | ERRO! Usuário ou Senha inválidos |

