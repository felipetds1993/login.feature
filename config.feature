            #language: pt

            Funcionalidade: configurar produto

            Como cliente da EBAC-SHOP
            Eu quero configurar meu produto de acordo com meu tamanho e preferências
            E escolher a quantidade
            Para que eu possa adicioná-lo ao carrinho

            Cenario: Todas as opções de configuração do produto devem ser obrigatórias
            Dado que estou na página de configuração do produto
            Quando eu tentar adicionar um produto ao carrinho sem selecionar cor, tamanho ou quantidade
            Então o sistema deve exibir uma mensagem de erro
            E me impedir de adicionar o produto ao carrinho

            Cenario: Limitar o número de produtos por venda
            Dado que estou na página de configuração do produto
            Quando eu tentar adicionar mais de 10 produtos ao carrinho
            Então o sistema deve exibir uma mensagem
            E me impedir de adicionar mais de 10 produtos

            Cenario: Redefinir a configuração do produto com o botão "Limpar"
            Dado que eu selecionei cor, tamanho e quantidade na página de configuração do produto
            Quando eu clicar no botão "Limpar"
            Então todas as seleções devem voltar ao estado original
            E a quantidade deve ser zerada

            Exemplos:

            | quantidade | mensagem                                 |
            | 5          | Quantidade permitida                     |
            | 10         | Quantidade permitida                     |
            | 11         | Limite de 10 produtos por venda excedido |
            | 20         | Limite de 10 produtos por venda excedido |



