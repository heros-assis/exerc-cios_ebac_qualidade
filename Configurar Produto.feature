#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que acesso a página do produto

Cenário: Validar Cor, Tamanho e Quantidade - Autenticação válida
Quando seleciono "tamanho"
E seleciono "cor"
E seleciono "quantidade"
Então clico no botão "Comprar" para finalizar a compra

Cenário: Validar Cor, Tamanho e Quantidade - Autenticação Inválida
Quando seleciono "tamanho"
E seleciono "cor"
Então deve exibir mensagem "selecionar quantidade"

Cenário: Validar Cor, Tamanho e Quantidade - Autenticação Inválida
Quando seleciono "tamanho"
E seleciono "quantidade"
Então deve exibir mensagem "selecionar cor"

Cenário: Validar Cor, Tamanho e Quantidade - Autenticação Inválida
Quando seleciono "cor"
E seleciono "quantidade"
Então deve exibir mensagem "selecionar tamanho"

Cenário: Compra com no máximo 10 produtos - Autenticação Válida
Quando seleciono "tamanho"
E seleciono "cor"
E seleciono "quantidade" adicionando "10" produtos
Então deve exibir mensagem "quantidade máxima permitida"

Cenário: Validar Botão Limpar
E seleciono "tamanho" "cor" "quantidade"
Quando seleciono o botão "Limpar"
Então as informações de "tamanho" "cor" "quantidade" devem ser excluídas