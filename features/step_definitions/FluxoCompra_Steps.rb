  Dado('que acesso o site') do
    @home.load
  end
  
  Dado('adiciono um produto ao carrinho') do
    @home.productsHome[2].click
    @product.btnAddToCartPDP.click
    @product.btnProceedToCheckoutPDP.click
    @summary.btnProceedToCheckoutCart.click
    
  end

  Quando('faco o login com um {string}') do |tp_user|
    @login.wait_until_email_visible
    @login.fazLogin(tp_user)
  end

  Quando('informo o endereco e pagamento') do
    @address.wait_until_btnProceedToCheckoutAddress_visible
    @address.btnProceedToCheckoutAddress.click
    @shipping.checkBoxTermsOfService.click
    @shipping.btnProceedToCheckoutShipping.click
    @payment.payByBankWire.click
    @payment.btnConfirmOrder.click
  end
  
  Então('devo visualizar a mensagem {string}') do |msg_order_success|
    @orderconfirmation.wait_until_msgOrderSuccess_visible
    mensagemSucesso = @orderconfirmation.msgOrderSuccess.text
    expect(mensagemSucesso).to eql msg_order_success
  end

  Então('devo receber a mensagem {string}') do |alert_login_invalido|
    mensagemAuthentication = @login.alertAuthentication.text
    expect(mensagemAuthentication).to have_content(alert_login_invalido)
  end
  