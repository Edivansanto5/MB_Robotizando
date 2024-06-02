*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
Quando inserir somente o nome de usuário
    Input Text   //input[@data-test='username']    testedeinput

Então uma mensagem de erro "Epic sadface: Password is required"
   Wait Until Element Is Visible   //h3[@data-test='error'][contains(.,'Epic sadface: Password is required')]   timeout=10s
   Log    finalizdo