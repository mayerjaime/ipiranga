require_relative 'helper.rb'

Before do 
    @home = HomePage.new
    @login = LoginPage.new
    @product = ProductPage.new
    @summary = SummaryPage.new
    @address = AddressPage.new
    @payment = PaymentPage.new
    @orderconfirmation = OrderConfirmationPage.new
    @shipping = ShippingPage.new
end

After do |scenario|
    @helper = Helper.new
    @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    @helper.tira_screenshot(@nome, 'screenshots/test_failed') if   scenario.failed?
    unless @helper.tira_screenshot(@nome, 'screenshots/test_passed')
   end
end