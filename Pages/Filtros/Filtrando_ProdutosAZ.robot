*** Settings ***
Library    SeleniumLibrary
Resource    ../../Pages/Login.robot
#Resource    ../Pages/Filtrando_ProdutosAZ.robot


*** Keywords ***

Dado que o usuário esteja logado no sistema
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Sleep    1s
    Input Text    //input[@id='user-name']    standard_user
    Input Text    //input[@id='password']     secret_sauce
    Click Button     //input[@id='login-button']
    Wait Until Element Is Visible    //div[@class='app_logo'][contains(.,'Swag Labs')]

Quando selecionar a categoria Name (A to Z)
    Wait Until Element Is Visible    //select[contains(@class,'container')]
    Click Element    //select[contains(@class,'product_sort_container')]
    Sleep    2s
    # Seleciona a opção "Name (A to Z)"
    Wait Until Element Is Visible    //select[@data-test='product-sort-container']
    Select From List By Value    //select[@data-test='product-sort-container']    az
    Sleep    1s

    ${selected_option} =    Get Selected List Label    //select[@data-test='product-sort-container']
    Log    Selected option: ${selected_option}
    Should Be Equal    ${selected_option}    Name (A to Z)
    Sleep     3s

    