*** Settings ***
Library    SeleniumLibrary
Resource    ../DATN-Auto/Resources.robot
*** Test Cases ***
Valid Sign Up
    opening the website
    click the sign up link
    inputting fullname    Anh Kha
    select gender    Nữ    
    inputting username    anhkha1
    inputting password    anhkha
    inputting confirm password    anhkha
    click the sign up button
    page should navigate to the main page after sign up
    closing the browser
Invalid Fullname
    opening the website
    click the sign up link
    inputting fullname    abc
    select gender    Nữ    
    inputting username    abcd123
    inputting password    abcd123
    inputting confirm password    abcd123
    click the sign up button
    fullname should have at least 4 letters
    closing the browser
Invalid Username
    opening the website
    click the sign up link
    inputting fullname    abcd
    select gender    Nữ    
    inputting username    12
    inputting password    abcd123
    inputting confirm password    abcd123
    click the sign up button
    username should have at least 4 letters
    closing the browser
Invalid Password
    opening the website
    click the sign up link
    inputting fullname    abcd
    select gender    Nữ    
    inputting username    abc123
    inputting password    ac
    inputting confirm password    ac
    click the sign up button
    password should have at least 4 letters
    closing the browser
Invalid Password Confirm
    opening the website
    click the sign up link
    inputting fullname    abcd
    select gender    Nữ    
    inputting username    abc123
    inputting password    abcs
    inputting confirm password    acxza
    click the sign up button
    password confirm doesn't match
    closing the browser