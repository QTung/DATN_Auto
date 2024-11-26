*** Settings ***
Library    SeleniumLibrary
Variables    ../Locator/Locator.py
Variables    ../Testdata/TestData.py
*** Keywords ***
Click Add to Cart button
    Click Element    ${AddToCartButton}
Verify the product has been added to cart
    Wait Until Page Contains    Thêm sản phẩm vào giỏ hàng thành công
Go to cart
    Wait Until Page Does Not Contain    Thêm sản phẩm vào giỏ hàng thành công  
    Mouse Over    ${CartIcon}
    Sleep    1s
    Click Element    ${SeeCartButton}

    