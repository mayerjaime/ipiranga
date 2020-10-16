#language: pt

Funcionalidade: Fluxo de Compra
    - Eu como cliente quero fazer a compra de um ou mais produtos

@compra-sucesso @compra
    Cenário: Validar o fluxo de compra com sucesso
    Dado que acesso o site
    E adiciono um produto ao carrinho
    Quando faco o login com um "cliente cadastrado"
    E informo o endereco e pagamento
    Então devo visualizar a mensagem "Your order on My Store is complete."

@cliente-nao-cadastrado @compra
    Cenário: Validar a tentativa de compra por um cliente não cadastrado
    Dado que acesso o site
    E adiciono um produto ao carrinho
    Quando faco o login com um "cliente não cadastrado"
    Então devo receber a mensagem "Authentication failed."