*** Settings ***
Resource    ../Pages/Login.robot
Resource    ../Pages/Login_inserindo_apenas_senha.robot
Resource    ../Pages/Login_inserindo_apenas_nome_usuario.robot
Resource    ../Pages/Login_sem_inserir_nomeUsuario_Senha.robot
Resource    ../Pages/Login_com_usuário_Bloqueado.robot

*** Keywords ***
CT01: Login com sucesso
    Dado que o usuário esteja na tela de Home
    Quando isnerir o Login e a senha corretamente
    Então o usuário será logado com sucesso


CT02: Login inserindo apenas a senha
    Dado que o usuário esteja na tela de login
    Quando inserir somente a senha
    E ao Clicar em "Login"
    Então uma mensagem de erro vai ser exibida
    E o usuário não pode logar no site

CT03: Login inserindo apenas o nome de usuário
    Dado que o usuário esteja na tela de login
    Quando inserir somente o nome de usuário
    E ao Clicar em "Login"
    Então uma mensagem de erro "Epic sadface: Password is required"
    E o usuário não pode logar no site

CT04: Login inserindo caracteres especias
    Dado que o usuário esteja na tela de Home
    Quando nao informar o usuário e a senha
    E ao clicar em 'Login'
    Então uma mensagem de erro "Epic sadface: Username and password do not match any user in this service"

CT05: Login com usuário Bloqueado
    Dado que o usuário esteja na tela de login
    Quando inserir um nome de usuário bloqueado "locked_out_user"
    E a senha Válida
    Quando clicar no botão 'Login'
    Então uma mensagem de erro "Epic sadface: Sorry, this user has been locked out" será exibida
    E o usuário não será logado no sistema
   