#language: pt

Funcionalidade: Tela Cadastro_Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que acesso a tela de Checkout

Cenário: Autenticar dados do Cadastro - Válido
Quando preencho os dados obrigatórios do cadastro
Então posso finalizar a compra

Cenário: Autenticar Dados do Cadastro- Autenticação Inválida
Quando preencho os dados  do cadastro
E e não preencho o campo obrigatório "Cidade"
Então deve exibir mensagem "Campo Obrigatório não preenchido"

Cenário: E-mail Inválido
Quando  preencho os dados  do cadastro
E no campo obrigatório "e-mail" informo o e-mail "heros@gmail.c"
Então deve exibir mensagem "Formato de e-mail inválido"

Cenário: Cadastro com campos vazios
Quando não preencho algum dado do cadastro
Então deve exibir mensagem "Favor preencher todos os campos obrigatórios"