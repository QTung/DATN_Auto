*** Settings ***
Library    SeleniumLibrary
Variables    ../Locator/Locator.py
Variables    ../Testdata/TestData.py
*** Keywords ***
Click Sign up Link
    Wait Until Element Is Visible    ${SignupLink}    timeout=10s
    Click Element    ${SignupLink}
Input Valid Fullname
    Click Element    ${SignupFullnameInputBox}
    FOR    ${char}    IN    ${Fullname}
    Press Keys    None    ${char}
    END
Input Invalid Fullname
    Click Element    ${SignupFullnameInputBox}
    FOR    ${char}    IN    ${WrongFullname2}
    Press Keys    None    ${char}
    END
Input Duplicate Username
    Click Element    ${SignupUsernameInputBox}
    FOR    ${char}    IN    ${DuplicateUsername}
    Press Keys    None    ${char}
    END
Select Male
    Click Element    ${SignupRadioMale} 
Select Female
    Click Element    ${SignupRadioFemale} 
Input Valid Username
    Click Element    ${SignupUsernameInputBox}
    FOR    ${char}    IN    ${NewUsername}
    Press Keys    None    ${char}
    END
Input Invalid Username
    Click Element    ${SignupUsernameInputBox}
    FOR    ${char}    IN    ${WrongTestUsername}
    Press Keys    None    ${char}
    END
Input Valid Password
    Click Element    ${SignupPasswordInputBox}
    FOR    ${char}    IN    ${NewPassword}
    Press Keys    None    ${char}
    END
Input Invalid Password
    Click Element    ${SignupPasswordInputBox}
    FOR    ${char}    IN    ${WrongPassword2}
    Press Keys    None    ${char}
    END
Input Valid Confirm Password
    Click Element    ${SignupConfirmPasswordInputBox}
    FOR    ${char}    IN    ${NewPassword}
    Press Keys    None    ${char}
    END
Input Invalid Confirm Password
    Click Element    ${SignupConfirmPasswordInputBox}
    FOR    ${char}    IN    ${WrongComfirmPassword}
    Press Keys    None    ${char}
    END
Verify if fullname is invalid
    Wait Until Page Contains    Họ và tên phải có ít nhất 4 ký tự!
Verify if username is invalid
    Wait Until Page Contains    Tên đăng nhập phải có ít nhất 4 ký tự!
Verify if username has already exist
    Wait Until Page Contains    Tên tài khoản đã tồn tại!
Verify if password is invalid
    Wait Until Page Contains    Mật khẩu phải có ít nhất 4 ký tự!
Verify if confirm password is incorrect
    Wait Until Page Contains    Không khớp mật khẩu!
Click Sign up button
    Click Element    ${SignupButton}