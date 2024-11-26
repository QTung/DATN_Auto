*** Settings ***
Library    SeleniumLibrary
Variables    ../Locator/Locator.py
Variables    ../Testdata/TestData.py
*** Keywords ***
Click Login Link
    Click Element    ${LoginLink}
Input Admin Username
    Input Text    ${LoginUsernameInputBox}    ${AdminUsername}
Input Admin Password
    Input Text    ${LoginPasswordInputBox}    ${AdminPassword}
Input Valid Username
    Input Text    ${LoginUsernameInputBox}    ${Username}
Input Valid Password
    Input Text    ${LoginPasswordInputBox}    ${Password}
Input Wrong Username
    Input Text    ${LoginUsernameInputBox}    ${WrongUsername1}
Input Wrong Password
    Input Text    ${LoginPasswordInputBox}    ${WrongPassword1}
Verify if username or password is not correct
    Wait Until Page Contains    Tài khoản hoặc mật khẩu không chính xác!
Verify if username and password is empty
    Wait Until Page Contains    Tên đăng nhập phải có ít nhất 4 ký tự!
    Wait Until Page Contains    Mật khẩu phải có ít nhất 4 ký tự!
Verify if the user is at Login Page
    Wait Until Page Contains Element    //*[@id=":r6ip:"]    
Click Login
    Click Element    ${LoginButton}