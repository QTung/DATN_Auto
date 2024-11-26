*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFile/loginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/homePage.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/productDetail.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/cartPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/productPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/checkoutPage.robot
*** Variables ***
${url}    http://localhost:3000/
${browser}    chrome
*** Test Cases ***
Add New Product to Cart by Searching (Smartphone Product)
    Opening the website    ${url}    ${browser}
    User Login
    Verify user is at main page
    Search and click on the product
    Click Add to Cart button
    Verify the product has been added to cart
    Go to cart
    Confirm phone product in cart
    Close Browser
Add New Product to Cart through Product Page (Laptop Product)
    Opening the website    ${url}    ${browser}
    User Login
    Verify user is at main page
    Navigate to Laptop Product Page
    Choose a laptop product
    Click Add to Cart button
    Verify the product has been added to cart
    Go to cart
    Confirm laptop product in cart
    Close Browser
Update Product Quantity in Cart
    Opening the website    ${url}    ${browser}
    User Login
    Verify user is at main page
    Go to cart
    Increase quantity
    Sleep    3s
    Close Browser
Remove Product from Cart
    Opening the website    ${url}    ${browser}
    User Login
    Verify user is at main page
    Go to cart
    Remove a Product from Cart
    Sleep    3s
    Close Browser
Place Order Successfully
    Opening the website    ${url}    ${browser}
    User Login
    Verify user is at main page
    Go to cart
    Go to Checkout
    Provide Address
    Choose Shipping Method
    Apply Voucher
    Place Order
    Close Browser