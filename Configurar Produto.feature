#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que acesso a página do produto

Cenário: Validar Campos Obrigatórios - Autenticação Válida
Quando seleciono "tamanho" "cor" e "quantidade"
Então clico no botão "Comprar" para finalizar a compra

Cenário: Validar campos Obrigatórios - Autentificação Inválida
Quando não seleciono algum dos campos "tamanho" "cor" e "quantidade"
Então Então deve exibir mensagem "campo obrigatório não preenchido"

Cenário: Compra com no máximo 10 produtos - Autenticação Válida
Quando seleciono "tamanho" "cor" 
E seleciono "quantidade" adicionando "10" produtos
Então deve exibir mensagem "quantidade máxima permitida"

Cenário: Validar Botão Limpar
E seleciono "tamanho" "cor" "quantidade"
Quando seleciono o botão "Limpar"
Então as informações de "tamanho" "cor" "quantidade" devem ser excluídas