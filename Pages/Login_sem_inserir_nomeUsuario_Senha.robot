*** Settings ***

Library    SeleniumLibrary


*** Keywords ***
Quando nao informar o usuário e a senha
    Input Text    //input[@data-test='username']    '@$ '
    Input Text    //input[@data-test='password']    '23¨&' 
E ao clicar em 'Login'
    Wait Until Element Is Visible    //input[@id='login-button']
    Click Button     //input[@id='login-button']

Então uma mensagem de erro "Epic sadface: Username and password do not match any user in this service"
    Wait Until Element Is Visible   //h3[@data-test='error'][contains(.,'Epic sadface: Username and password do not match any user in this service')]
