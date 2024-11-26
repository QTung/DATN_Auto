*** Settings ***
Library    SeleniumLibrary
Variables    ../Locator/Locator.py
Variables    ../Testdata/TestData.py
*** Keywords ***
Confirm phone product in cart
    ${cart_product} =    Get Text    //*[@id="root"]/div/div[2]/div[2]/div/div[1]/div/table/tbody/tr/td[2]/div/div/p
    Should Be Equal    ${cart_product}    ${ProductName}
Confirm laptop product in cart
    Page Should Contain    ${LaptopProductName}
Increase quantity
    Click Element    ${SearchBar}
    Sleep    1s
    ${initial_quantity}=    Get Text     ${QuantityValue}  
    Log    Initial quantity: ${initial_quantity}   
    Click Button    ${IncreaseQuantityButton}
    ${expected_quantity}=    Evaluate    int(${initial_quantity}) + 1
    Log    Expected quantity: ${expected_quantity}
    ${updated_quantity}=    Get Text    ${QuantityValue}
    Wait Until Keyword Succeeds    5s    1s    Verify Quantity Updated    ${updated_quantity}    ${expected_quantity}
Verify Quantity Updated
    [Arguments]    ${updated_quantity}    ${expected_quantity}
    Log    Verifying updated quantity: ${updated_quantity} == ${expected_quantity}
    Should Be Equal As Numbers    ${updated_quantity}    ${expected_quantity}    Quantity update failed: expected ${expected_quantity} but got ${updated_quantity}.
Remove a Product from Cart
    Sleep    2s
    Click Element    xpath=//td[contains(@class, 'MuiTableCell-root')][2]//p[contains(text(),'${PRODUCT_NAME}')]/ancestor::td[1]/preceding-sibling::td[1]
    Click Button    ${RemoveButton}
    Sleep    1s
    Click Button    ${ConfirmButton}
    Wait Until Page Does Not Contain    ${ProductName}  
Go to Checkout
    Sleep    1s
    Click Element    ${SelectAllCheckbox}
    Click Button    ${CheckoutButton}


    

    