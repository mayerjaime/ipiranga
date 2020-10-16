class PaymentPage < SitePrism::Page

    element :payByBankWire, 'a.bankwire'
    element :payByCheck, 'a.cheque'
    element :btnConfirmOrder, 'button.btn-default.button-medium'
end