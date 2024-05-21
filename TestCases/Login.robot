*** Settings ***
Resource    ../Pages/Login.robot

*** Keywords ***
CT: Login com sucesso
    Dado que o usuário esteja na tela de Home
    Quando isnerir o Login e a senha corretamente
    Então o usuário será logado com sucesso