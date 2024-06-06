*** Settings ***

Library    SeleniumLibrary
Resource    ../../Pages/Login.robot



*** Keywords ***
Dado que o usuário esteja na tela principal
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Sleep    1s
E ao inserir o login e senha corretos
    Input Text    //input[@id='user-name']    standard_user
    Input Text    //input[@id='password']     secret_sauce
Quando estiver logado no sistema
    Click Button     //input[@id='login-button']
    Wait Until Element Is Visible    //div[@class='app_logo'][contains(.,'Swag Labs')]

E selecionar filtrar os produtos na categoria baixo a auto
# Seleciona a opção "Price (low to high)"
    Select From List By Value    //select[@data-test='product-sort-container']    lohi
    Sleep    1s
    ${selected_option}=    Get Selected List Label    //select[@data-test='product-sort-container']
    Log    Selected option: ${selected_option}
    Should Be Equal    ${selected_option}    Price (low to high)