*** Settings ***
Library    SeleniumLibrary
Resource    ../DATN-Auto/Resources.robot
*** Test Cases ***
Valid Admin LogIn
    opening the website
    click the log in link
    inputting username    admin
    inputting password    admin
    click the log in button
    page should navigate to the main page after login
    closing the browser
Valid User LogIn
    opening the website
    click the log in link
    inputting username    tungsten121
    inputting password    123456
    click the log in button
    page should navigate to the main page after login
    closing the browser
Right Username Wrong Password
    opening the website
    click the log in link
    inputting username    tungsten121
    inputting password    12345
    click the log in button
    username or password is not correct
    closing the browser
Wrong Username Right Password
    opening the website
    click the log in link
    inputting username    tungsten12
    inputting password    123456
    click the log in button
    username or password is not correct
    closing the browser
Empty Username and Password
    opening the website
    click the log in link 
    click the log in button
    username and password is empty
    closing the browser
*** Keywords ***




   