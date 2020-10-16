class LoginPage < SitePrism::Page

    element :email, '#email'
    element :password, '#passwd'
    element :btnSigIn, '#SubmitLogin'
    element :alertAuthentication, '.alert.alert-danger'

    def fazLogin(tp_user)
        case tp_user
        when 'cliente cadastrado'
            email.set('user_teste@moakt.co')
            password.set('090807')
            btnSigIn.click
        when 'cliente não cadastrado'
            email.set('user_nao_cadastrado@moakt.co')
            password.set('090807')
            btnSigIn.click
        end
    end
end