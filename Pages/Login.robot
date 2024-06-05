*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Dado que o usuário esteja na tela de Home
    Open Browser  https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Sleep    2s
Quando isnerir o Login e a senha corretamente 
    Input Text    //input[@id='user-name']    standard_user
    Input Text    //input[@id='password']     secret_sauce
    Sleep    3s
Então o usuário será logado com sucesso
    Click Button     //input[@id='login-button']
    Wait Until Element Is Visible    //div[@class='app_logo'][contains(.,'Swag Labs')]
    Sleep    5s

