*** Settings ***
Library    SeleniumLibrary
Documentation      Esse teste visa a tentativa de login sem preencher o campo de nome do Usuário


*** Keywords ***
# Abrindo a Página
Dado que o usuário esteja na tela de login
    Open Browser  https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Sleep    2s
# inserindo somente a senha
Quando inserir somente a senha
    #Input Text    //input[@id='user-name']    standard_useres
    Input Text    //input[@id='password']     secret_sauce

# Clicando no botão de login
E ao Clicar em "Login"
    Click Button     //input[@id='login-button']

# Verificando se a mensagem de erro foi exibida para o usuário
Então uma mensagem de erro vai ser exibida
   Wait Until Element Is Visible    //h3[@data-test='error'][contains(.,'Epic sadface: Username is required')]    timeout=10s

# Verficando se o usuário foi logado na página,mesmo com o login errado 
E o usuário não pode logar no site
    Element Should Not Be Visible    //span[@class='title'][contains(.,'Products')] 

#"Element Should Not Be Visible" é uma assertiva que verifica se um elemento específico não está visível na página.  