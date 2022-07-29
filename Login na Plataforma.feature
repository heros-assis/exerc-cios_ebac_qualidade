            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesso a página de autenticação do Portal EBAC

            Esquema do Cenário: Autenticar Usuário Válido
            Quando digitar o usuário <usuario>
            E digitar senha <senha>
            Então deve exibir mensagem <mensagem> de sucesso na tela de Checkout

            Exemplos:
            | usuario             | senha         | mensagem      |
            | "vitor@gmail.com"   | "vitor@123"   | "Olá Vitor"   |
            | "camila@gmail.com"  | "camila@123"  | "Olá Camila"  |
            | "heros@gmail.com"   | "heros@123"   | "Olá Heros"   |
            | "marco@gmail.com"   | "marco@123"   | "Olá Marco"   |
            | "vitoria@gmail.com" | "vitoria@123" | "Olá Vitoria" |
            | "camille@gmail.com" | "camille@123" | "Olá Camille" |
            | "heitor@gmail.com"  | "heitor@123"  | "Olá Heitor"  |
            | "marcia@gmail.com"  | "marcia@123"  | "Olá Márcia"  |



Cenário: Usuário os Senha Inválidos
Quando digitar o usuário "heros@gmail.c"
E digitar senha "heros@123"
Então deve exibir mensagem "Usuário ou senha inválidos"
