            #language: pt

            Funcionalidade: Check out

            Como cliente da EBAC-SHOP
            Eu quero concluir meu cadastro
            Para finalizar minha compra

            Cenario: Cadastro com todos os dados obrigatórios
            Dado que estou na tela de cadastro
            Quando eu preencho todos os campos obrigatórios
            E clico no botão "Concluir cadastro"
            Então o sistema deve cadastrar o usuário com sucesso

            Cenario: Validação do campo de e-mail
            Dado que estou na tela de cadastro
            Quando eu preencho o campo "e-mail" com "<email>"
            E clico no botão "Concluir cadastro"
            Então o sistema deve exibir a mensagem "<mensagem>"

            Exemplos:
            | email               | mensagem                       |
            | usuario@dominio.com | Cadastro realizado com sucesso |
            | usuario#dominio.com | E-mail inválido                |
            | @dominio.com        | E-mail inválido                |
            | usuario@            | E-mail inválido                |

            Cenario: Cadastro com campos obrigatórios vazios
            Dado que estou na tela de cadastro
            Quando eu deixo os campos obrigatórios "<campo>" vazios
            E clico no botão "Concluir cadastro"
            Então o sistema deve exibir a mensagem de alerta "<mensagem>"

            Exemplos:
            | campo     | mensagem                          |
            | Nome      | O campo "Nome" é obrigatório      |
            | Sobrenome | O campo "Sobrenome" é obrigatório |
            | Endereço  | O campo "Endereço" é obrigatório  |
            | E-mail    | O campo "E-mail" é obrigatório    |



