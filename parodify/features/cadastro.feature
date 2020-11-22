#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas
    @test
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | thiagoaticus@hotmail.com |
            | senha          | thi123                   |
            | senha_confirma | thi123                   |
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
            |                          | thi123 | thi123         | Oops! Informe seu email.             |
            | thiagoaticus@hotmail.com |        |                | Oops! Informe sua senha.             |
            | thiagoaticus@hotmail.com | thi123 | abc321         | Oops! Senhas não são iguais.         |
            |                          |        |                | Oops! Informe seu email e sua senha. |
            | thiagoaticus@hotmail.com | jorge  | jorge          | Oops! Algo estranho ocorreu.         |
    Cenario: Validação do campo email
        #validação da propriedade email.
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"

