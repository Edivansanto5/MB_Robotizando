*** Settings ***
Library    SeleniumLibrary
Documentation      Esse teste visa a tentativa de login sem preencher o campo de nome do Usuário


*** Keywords ***
Dado que o usuário esteja na tela de login
    Open Browser  https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Sleep    2s
Quando isnerir somente a senha corretamente
    #Input Text    //input[@id='user-name']    standard_useres
    Input Text    //input[@id='password']     secret_sauce

E ao Clicar em "Login"
    Click Button     //input[@id='login-button']

Então uma mensagem de erro vai ser exibida
    Wait Until Element Is Visible    //h3[@data-test='error'][contains(.,'Epic sadface: Username is required')]

#E o usuário não pode logar no site
