*** Settings ***
Resource        ../TestCases/Login.robot



*** Test Cases ***
CT01: Logar com sucesso
    CT01: Login com sucesso

CT02: Login inválido inserindo apenas a senha
    CT02: Login inserindo apenas a senha
CT03: Login inválido inserindo apenas o nome de usuário
    CT03: Login inserindo apenas o nome de usuário
    
#CT04: Login invalido não inserindo nome de usuário e senha
    #CT03: Login sem inserir nome de Usuário e Senha
    