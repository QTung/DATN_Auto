*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFile/loginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/homePage.robot
*** Variables ***
${url}    http://localhost:3000/
${browser}    chrome
*** Test Cases ***
Valid Admin LogIn
    Opening the website    ${url}    ${browser}
    Click Login Link
    Input Admin Username
    Input Admin Password
    Click Login
    Verify user is at main page
    Close Browser
Valid User LogIn
    Opening the website    ${url}    ${browser}
    Click Login Link
    Input Valid Username
    Input Valid Password
    Click Login
    Verify user is at main page
    Close Browser
Right Username Wrong Password
    Opening the website    ${url}    ${browser}
    Click Login Link
    Input Valid Username   
    Input Wrong Password
    Click Login
    Verify if username or password is not correct
    Close Browser
Wrong Username Right Password
    Opening the website    ${url}    ${browser}
    Click Login Link
    Input Wrong Username   
    Input Valid Password
    Click Login
    Verify if username or password is not correct
    Close Browser
Empty Username and Password
    Opening the website    ${url}    ${browser}
    Click Login Link
    Click Login
    Verify if username and password is empty
    Close Browser
*** Keywords ***




   