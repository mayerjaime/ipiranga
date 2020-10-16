class ShippingPage < SitePrism::Page

    element :checkBoxTermsOfService, '#uniform-cgv'
    element :btnProceedToCheckoutShipping, 'button[name="processCarrier"]'
end