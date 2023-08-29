*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Tc_o1_Truy cập web msb
    Truy cập google.com

    Click vào ô tìm kiềm và nhập từ khóa "MSB"

    Nhấn phím Enter để tìm kiếm

    Sleep    10s

    Click vào kết quả tìm kiếm đầu tiên

    Tắt Popup

    Verify trang có chứa "Chọn thẻ phù hợp với bạn"


*** Keywords ***
Truy cập google.com
    Open Browser    https://www.google.com/    chrome

    Maximize Browser Window

Click vào ô tìm kiềm và nhập từ khóa "MSB"
    Wait Until Element Is Visible    //textarea[@id='APjFqb']    30s

    Input Text    //textarea[@id='APjFqb']    msb    # //textarea[@title='Tìm kiếm']

Nhấn phím Enter để tìm kiếm
    Press Keys    //textarea[@id='APjFqb']    ENTER

Click vào kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']    5s

    Click Element    //div[@id='search']//a[@href='https://www.msb.com.vn/vi/']

Tắt Popup
    Wait Until Element Is Visible    (//span[@class='pop-up-porlet-close-btn'])[2]    5s

    Click Element    (//span[@class='pop-up-porlet-close-btn'])[2]

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    (//div[normalize-space()='Chọn thẻ phù hợp với bạn'])[1]
