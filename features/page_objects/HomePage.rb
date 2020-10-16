class HomePage < SitePrism::Page

    set_url '/'
    element :login, 'a[class="login"]'
    element :dresses, 'a[title="Dresses"]'
    element :tShirts, 'a[title="T-shirts"]'
    elements :productsHome, 'a[class="product-name"]'
end 