*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Browser}    chrome
*** Keywords ***
opening the website
    Open Browser    http://localhost:3000/    ${BROWSER}
closing the browser
    Close Browser
click the log in link
    Wait Until Element Is Visible    xpath=//a[text()='Đăng nhập']    timeout=10s
    Click Element    css=a[href='/dang-nhap']
click the sign up link
    Wait Until Element Is Visible    xpath=//a[text()='Đăng ký']    timeout=10s
    Click Element    css=a[href='/dang-ky']
inputting fullname
    [Arguments]    ${fullname}   
    Click Element    //*[@id="root"]/div/div/div[2]/div/div/div[2]/div[2]/div/form/div[1]/div/div
    FOR    ${char}    IN    ${fullname}
    Press Keys    None    ${char}
    END
select gender
    [Arguments]    ${gender}
    Run Keyword If    '${gender}' == 'Nam'    Click Element    //input[@value='0']
    Run Keyword If    '${gender}' == 'Nữ'    Click Element    //input[@value='1']
inputting username
    [Arguments]    ${username}
    Click Element    //*[@id="root"]/div/div/div[2]/div/div/div[2]/div[2]/div/form/div[3]/div/div
    FOR    ${char}    IN    ${username}
    Press Keys    None    ${char}
    END
inputting password
    [Arguments]    ${password}
    Click Element    //*[@id="root"]/div/div/div[2]/div/div/div[2]/div[2]/div/form/div[4]/div/div
    FOR    ${char}    IN    ${password}
    Press Keys    None    ${char}
    END
inputting confirm password
    [Arguments]    ${confirm_password}
    Click Element    //*[@id="root"]/div/div/div[2]/div/div/div[2]/div[2]/div/form/div[5]/div/div
    FOR    ${char}    IN    ${confirm_password}
    Press Keys    None    ${char}
    END
click the log in button
    Sleep    2
    Click Button    //button[@id=':r39d:']
click the sign up button
    Sleep    2
    Wait Until Element Is Visible    xpath=//button[@type='submit' and @tabindex='0']
    Click Element    xpath=//button[@type='submit' and @tabindex='0']
page should navigate to the main page after login
    Wait Until Page Contains    Đăng nhập thành công
page should navigate to the main page after sign up
    Wait Until Page Contains    Đăng ký thành công
username or password is not correct
    Wait Until Page Contains    Tài khoản hoặc mật khẩu không chính xác!
username and password is empty
    Wait Until Page Contains    Tên đăng nhập phải có ít nhất 4 ký tự!
    Wait Until Page Contains    Mật khẩu phải có ít nhất 4 ký tự!
fullname should have at least 4 letters
    Wait Until Page Contains    Họ và tên phải có ít nhất 4 ký tự!
username should have at least 4 letters
    Wait Until Page Contains    Tên đăng nhập phải có ít nhất 4 ký tự!
password should have at least 4 letters
    Wait Until Page Contains    Mật khẩu phải có ít nhất 4 ký tự!
password confirm doesn't match
    Wait Until Page Contains    Không khớp mật khẩu!
