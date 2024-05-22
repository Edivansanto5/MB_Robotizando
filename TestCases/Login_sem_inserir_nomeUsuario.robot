*** Settings ***
Resource     ../Pages/Login_sem_inserir_nomeUsuario.robot

*** Keywords ***
CT02: Login sem inserir o Login
    Dado que o usuário esteja na tela de login
    Quando isnerir somente a senha corretamente
    E ao Clicar em "Login"
    Então uma mensagem de erro vai ser exibida
    #E o usuário não pode logar no site
