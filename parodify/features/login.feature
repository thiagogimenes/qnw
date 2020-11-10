#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com o meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenario: Login do usuário

        Dado que acesso a página de Login
        Quando submeto minhas credenciais com: "thiagoaticus@hotmail.com" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página de Login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                    | senha  |
            | thiagoaticus@404.com.br  | abc123 |
            |                          |        |
            | thiagoaticus@hotmail.com |        |
            | thiagoaticus@404.com.br  |        |

