#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas
   
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | thiagoaticus@hotmail.com |
            | senha          | pwd123                   |
            | senha_confirma | pwd123                   |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |

        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                    | senha  | confirma_senha | mensagem_saida                       |
            |                          | pwd123 | pwd123         | Oops! Informe seu email.             |
            | thiagoaticus@hotmail.com |        |                | Oops! Informe sua senha.             |
            | thiagoaticus@hotmail.com | pwd123 | abc321         | Oops! Senhas não são iguais.         |
            |                          |        |                | Oops! Informe seu email e sua senha. |
     Cenario: Validação do campo email
        #validação da propriedade email.
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"

