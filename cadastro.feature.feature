#language: pt

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
