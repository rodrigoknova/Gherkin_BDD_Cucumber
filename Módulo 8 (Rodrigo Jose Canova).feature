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
            Então deve <validar> a compra caso as configurações estiverem corretas

            Exemplos:
            | cor      | tamanho | quantidade | validar |
            | "Blue"   | "S"     | "3"        | "X"     |
            | "Orange" | "M"     | "5"        | "X"     |
            | "Red"    | "XL"    | "9"        | "X"     |
            | "Blue"   | " "     | "3"        | " "     |
            | "Orange" | "L"     | " "        | " "     |

            Esquema do Cenário: Testar multiplas configurações de quantidade do produto
            Quando eu selecionar a <quantidade>
            E clicar em "COMPRAR"
            Então deve <validar> a compra caso a configuração estiver correta.

            Exemplos:
            | quantidade | validar |
            | "1"        | "X"     |
            | "5"        | "X"     |
            | "9"        | "X"     |
            | "10"       | "X"     |
            | "11"       | " "     |
            | "12"       | " "     |

            Cenário: Limpar a configuração do produto
            Quando eu configurar o produto
            E clicar em "LIMPAR"
            Então deve limpar as configurações do produto e voltar ao estado original

            ----------------------------------------------------------------------------------------

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos


            Contexto:
            Dado que eu acessea página de autenticação da EBAC SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "pedro@ebac.com.br"
            E a senha "abc@123"
            Então deve exibir uma mensagem de boas vindas "Olá Pedro!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "pedrok@ebac.com.br"
            E a senha "abc@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "pedro@ebac.com.br"
            E a senha "fasfsad"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha     | mensagem     |
            | "pedro@ebac.com.br" | "abc@123" | "Olá Pedro!" |
            | "maria@ebac.com.br" | "abc@123" | "Olá Maria!" |
            | "joao@ebac.com.br"  | "abc@123" | "Olá João!"  |

            -----------------------------------------------------------------------------------------

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra
            
            
            Contexto:
            Dado  que eu acesse a página de Checkout da EBAC SHOP
            E clicar em "FINALIZAR COMPRA"
            
            Cenário: Preencher campos obrigatórios da compra
            Quando eu preencher os campos obrigatórios
            Então deve exibir uma mensagem de sucesso: "Compra efetuada com sucesso!"

            Cenário: Cadastrar com campos vázios
            Quando eu faltar de preencher um dos campos obrigatórios
            Então deve exibir um alerta: "Preencha todos os campos com o *"

            Cenário: Autenticar com email válido
            Quando eu digitar o email "joao@ebac.com.br"
            Então deve exibir uma mensagem de sucesso: "Compra efetuada com sucesso!"

            Cenário: Autenticar com email inválido
            Quando eu digitar o email "joaokk@ebac.com.br"
            Então deve exibir um alerta: "Email inválido"
        






