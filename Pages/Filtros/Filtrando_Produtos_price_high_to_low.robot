*** Settings ***
Library    SeleniumLibrary
#Resource   ../../Pages/Login.robot

*** Keywords ***

Dado que o usuário esteja na tela incial
    Open Browser    https://www.saucedemo.com/  chrome
    Maximize Browser window
    Sleep  1s
E inserindo a senha e login corretamente e válidos
    Input Text      //input[@id='user-name']    standard_user
    Input Text     //input[@id='password']     secret_sauce

Quando o usuário estiver logado no sistema
    Click Button     //input[@id='login-button']
    Wait Until Element Is Visible    //div[@class='app_logo'][contains(.,'Swag Labs')]

E selecionar a categoria de auto a baixo
    # Selecionando a categoria do preço Maior para o Menor
    Select From List By Value    //select[@data-test='product-sort-container']    hilo
    Sleep    1s
    ${selected_option}=    Get Selected List Label    //select[@data-test='product-sort-container']
    Log    Selected option: ${selected_option}
    Should Be Equal    ${selected_option}    Price (high to low)
    Log    teste passou
