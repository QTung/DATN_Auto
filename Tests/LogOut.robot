*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFile/loginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/homePage.robot
*** Variables ***
${url}    http://localhost:3000/
${browser}    chrome
*** Test Cases ***
Valid Admin LogOut
    Opening the website    ${url}    ${browser}
    Admin Login
    Verify user is at main page
    Click Logout as Admin
    Verify if the user is at Login Page
    Close Browser
Valid User LogOut
    Opening the website    ${url}    ${browser}
    User Login
    Verify user is at main page
    Click Logout as User
    Verify if the user is at Login Page
    Close Browser





   