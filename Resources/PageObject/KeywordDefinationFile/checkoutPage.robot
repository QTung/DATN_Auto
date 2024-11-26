*** Settings ***
Library    SeleniumLibrary
Variables    ../Locator/Locator.py
Variables    ../Testdata/TestData.py
*** Keywords ***
Provide Address
    Click Button    ${ChangeAddressButton}
    Sleep    1s
    Input Text    ${CheckoutPhoneNumberInputBox}    ${CheckoutPhoneNumber}
    Input Text    ${CheckoutCityInputBox}    ${CheckoutCity}
    Click Element    ${Checkout1stOptionCombo}
    Click Element    ${CheckoutDistrictInputBox}
    Input Text    ${CheckoutDistrictInputBox}    ${CheckoutDistrict}
    Click Element    ${Checkout1stOptionCombo}
    Click Element    ${CheckoutWardInputBox}
    Input Text    ${CheckoutWardInputBox}    ${CheckoutWard}
    Click Element    ${Checkout1stOptionCombo}
    Click Element    ${CheckoutHomeAddressInputBox}
    Input Text    ${CheckoutHomeAddressInputBox}    ${CheckoutHomeAddress}
    Click Button    ${ConfirmButton}
Choose Shipping Method
    Sleep    1s
    Click Button    ${ChangeShippingMethodButton}
    Click Element    ${SlowShippingMethod}
    Click Button    ${ConfirmButton}
Apply Voucher
    Click Element    ${VoucherInputBox}

    Click Button    ${ApplyButton}
Place Order
    Get Value    ${TotalMoney}
    Click Button    ${OrderButton}
