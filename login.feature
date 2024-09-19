#language: pt

Funcionalidade: Tela de login
Como aluno do portal EBAC
Quero me autenticar 
Para visualizar minhas notas 

contexto:
Dado que eu acesse a pagina de autenticação do portal EBAC

Cenario: Autenticação valida 
Quando eu digitar o usuario "joao@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "olá joão"

Cenario: Usuario inexistente 
Quando eu digitar o usuario "xxxyyyzzz@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "usuario inexistente"

Cenario: usuario com senha invalida 
Quando eu digitar o usuario "joao@ebac.com.br"
E a senha "nsdhfusdgfsdhf"
Então deve exibir uma mensagem de alerta: "usuario ou senha invalidos" 

Esquema do Cenario: Autenticar multiplos usuarios 
Quando eu digitar o <usuario>
E a <senha>
Então deve exibir a <mensagem> de sucesso 

Exemplos:
| usuario            | senha         | mensagem     |
|"joao@ebac.com.br"  | "teste@123"   | "Olá João!"  |
|"maria@ebac.com.br" | "teste@123"   | "Ola maria!" |
|"jose@ebac.com.br"  | "teste@123"   | "ola jose!"  |