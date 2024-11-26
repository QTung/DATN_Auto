*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFile/signupPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFile/homePage.robot
*** Variables ***
${url}    http://localhost:3000/
${browser}    chrome
*** Test Cases ***
Valid Sign Up
    Opening the website    ${url}    ${browser}
    Click Sign up Link
    Input Valid Fullname
    Select Female
    Input Valid Username
    Input Valid Password
    Input Valid Confirm Password
    Click Sign up button
    Verify user is at main page
    Close Browser
Invalid Fullname
    Opening the website    ${url}    ${browser}
    Click Sign up Link
    Input Invalid Fullname
    Select Male
    Input Valid Username
    Input Valid Password
    Input Valid Confirm Password
    Click Sign up button
    Verify if fullname is invalid
    Close Browser
Username already exist
    Opening the website    ${url}    ${browser}
    Click Sign up Link
    Input Valid Fullname
    Select Male
    Input Duplicate Username
    Input Valid Password
    Input Valid Confirm Password
    Click Sign up button
    Verify if username has already exist
    Close Browser
Invalid Username
    Opening the website    ${url}    ${browser}
    Click Sign up Link
    Input Valid Fullname
    Select Male
    Input Invalid Username
    Input Valid Password
    Input Valid Confirm Password
    Click Sign up button
    Verify if username is invalid
    Close Browser
Invalid Password
    Opening the website    ${url}    ${browser}
    Click Sign up Link
    Input Valid Fullname
    Select Male
    Input Valid Username
    Input Invalid Password
    Input Valid Confirm Password
    Click Sign up button
    Verify if password is invalid
    Close Browser
Invalid Password Confirm
    Opening the website    ${url}    ${browser}
    Click Sign up Link
    Input Valid Fullname
    Select Male
    Input Valid Username
    Input Valid Password
    Input Invalid Confirm Password
    Click Sign up button
    Verify if confirm password is incorrect
    Close Browser