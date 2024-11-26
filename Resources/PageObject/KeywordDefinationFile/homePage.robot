*** Settings ***
Library    SeleniumLibrary
Variables    ../Locator/Locator.py
Variables    ../Testdata/TestData.py
*** Keywords ***
Verify user is at main page
    Wait Until Page Contains    Deal ngon giá rẻ quá
    Wait Until Page Does Not Contain    Đăng nhập thành công
Click Logout as Admin
    Sleep    5s
    Click Element    ${Profile}
    Click Element    ${LogoutButtonAdmin}
Click Logout as User
    Sleep    5s
    Click Element    ${Profile}
    Click Element    ${LogoutButtonUser}
Search and click on the product
    Click Element    ${SearchBar}  
    FOR    ${char}    IN    ${ProductName}
    Press Keys    None    ${char}
    END
    Click Element    //*[@id="root"]/div/div[1]/div/div[2]/div[1]/div[2]/div/*[1]
Navigate to Laptop Product Page
    Click Element    //p[normalize-space()='Laptop']

