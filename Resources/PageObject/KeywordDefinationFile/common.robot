*** Settings ***
Library  SeleniumLibrary
Variables  ../Locator/Locator.py
Variables  ../Testdata/TestData.py
*** Keywords ***
Opening the website
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser} 
    Maximize Browser Window
    Wait Until Element Is Visible    ${LoginLink} 
Admin Login
    Click Element    ${LoginLink}
    Input Text    ${LoginUsernameInputBox}    ${AdminUsername}
    Input Text    ${LoginPasswordInputBox}    ${AdminPassword}
    Click Element    ${LoginButton}
User Login
    Click Element    ${LoginLink}
    Input Text    ${LoginUsernameInputBox}    ${Username}
    Input Text    ${LoginPasswordInputBox}    ${Password}
    Click Element    ${LoginButton}
