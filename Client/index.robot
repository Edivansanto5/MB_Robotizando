*** Settings ***
Resource        ../TestCases/Login.robot
Resource        ../TestCases/Filtrando_Produtos.robot



*** Test Cases ***
# Teste de logins
CT01: Logar com sucesso
    [Tags]    CT01
    CT01: Login com sucesso

CT02: Login inválido inserindo apenas a senha
    [Tags]    CT02
    CT02: Login inserindo apenas a senha
CT03: Login inválido inserindo apenas o nome de usuário
    [Tags]    CT03
    CT03: Login inserindo apenas o nome de usuário
    
CT04: Login invalido não inserindo nome de usuário e senha
    [Tags]    CT04
    CT04: Login inserindo caracteres especias
    
CT05: Login com usuário bloqueado
    [Tags]    CT05
    CT05: Login com usuário Bloqueado

# Teste de Categorias de Produtos
CT06: Exibindo produtos de acordo com filtros de A a Z
    [Tags]    CT06_filtro_AZ
    CT06: Filtrando produtos por nome de (A a Z)

CT07: Exibindo produtos de acordo com filtros de Z a A
    [Tags]    CT07_filtro_ZA
    CT07: Filtrando produtos por nome de (Z a A)