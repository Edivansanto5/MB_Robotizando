*** Settings ***
Resource        ../TestCases/Login.robot
Resource        ../TestCases/Login_sem_inserir_nomeUsuario.robot


*** Test Cases ***
CT01: Logar com sucesso
    CT01: Login com sucesso
CTO2: Logar sem inserir nome de usuário
    CT02: Login sem inserir o Login