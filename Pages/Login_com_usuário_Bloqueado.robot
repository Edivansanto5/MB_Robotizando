*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
Dado que o usuário estaja na tela de login
    Maximize Browser Window
    Open Browser    https://www.saucedemo.com/    chrome
    Wait Until Element Is Visible    //div[contains(@class,'login_logo')]
    Sleep   2s
Quando inserir um nome de usuário bloqueado "locked_out_user"
    Input Text    //input[@placeholder='Username']    locked_out_user

E a senha Válida
    Input Password    //input[contains(@placeholder,'Password')]     secret_sauce

Quando clicar no botão 'Login'
    Click Button    //input[@data-test='login-button']

Então uma mensagem de erro "Epic sadface: Sorry, this user has been locked out" será exibida
    Wait Until Element Is Visible    //h3[@data-test='error'][contains(.,'Epic sadface: Sorry, this user has been locked out.')]

E o usuário não será logado no sistema
    Element Should Not Be Visible    //span[@class='title'][contains(.,'Products')]