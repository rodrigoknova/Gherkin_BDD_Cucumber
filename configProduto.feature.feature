            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho


            Contexto:
            Dado que eu acesse a página de compra do produto

            Esquema do Cenário: Testar multiplas configurações de produto
            Quando eu selecionar <cor>; <tamanho>; <quantidade>
            E clicar em "COMPRAR"
            Então deve aparecer uma <mensagem> no sistema

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                   |
            | "Blue"   | "S"     | "3"        | "Produto adicionado"       |
            | "Orange" | "M"     | "5"        | "Produto adicionado"       |
            | "Red"    | "XL"    | "9"        | "Produto adicinado"        |
            | "Blue"   | " "     | "3"        | "Preencha todos os campos" |
            | "Orange" | "L"     | " "        | "Preencha todos os campos" |

            Esquema do Cenário: Testar multiplas configurações de quantidade do produto
            Quando eu selecionar a <quantidade>
            E clicar em "COMPRAR"
            Então deve aparecer uma <mensagem> no sistema

            Exemplos:
            | quantidade | mensagem                  |
            | "1"        | "Produto adicionado"      |
            | "5"        | "Produto adicionado"      |
            | "9"        | "Produto adicionado"      |
            | "10"       | "Produto adicionado"      |
            | "11"       | "Limite de produtos (10)" |
            | "12"       | "Limite de produtos (10)" |

            Cenário: Limpar a configuração do produto
            Quando eu configurar o produto
            E clicar em "LIMPAR"
            Então deve limpar as configurações do produto e voltar ao estado original






