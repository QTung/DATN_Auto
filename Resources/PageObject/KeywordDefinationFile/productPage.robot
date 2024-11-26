*** Settings ***
Library    SeleniumLibrary
Variables    ../Locator/Locator.py
Variables    ../Testdata/TestData.py
*** Keywords ***
#Laptop Page
Choose a laptop product
    Sleep    2s
    Click Element    //*[contains(text(), "${LaptopProductName}")]/preceding-sibling::*[1]

