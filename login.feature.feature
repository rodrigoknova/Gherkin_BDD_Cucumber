#language: pt

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