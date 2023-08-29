*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Login_success
    [Tags]    login
    Truy cập trang web guru
    Nhập username/password bất kỳ
    Bấm signIN
    verify login thành công


*** Keywords ***
Truy cập trang web guru
    Open Browser    https://demo.guru99.com/test/login.html    chrome
    Maximize Browser Window

Nhập username/password bất kỳ
    Input Text    //input[@id='email']    dieungan@gmail.com
    Input Password    //input[@id='passwd']    123

Bấm signIN
    Click Button    //button[@id='SubmitLogin']

verify login thành công
    Page Should Contain Element    //h3[normalize-space()='Successfully Logged in...']
