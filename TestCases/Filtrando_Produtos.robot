*** Settings ***
Library    SeleniumLibrary
Resource     ../Pages/Login.robot
Resource     ../Pages/Filtrando_ProdutosZA.robot
Resource     ../Pages/Filtrando_ProdutosAZ.robot

*** Keywords ***

CT06: Filtrando produtos por nome de (A a Z)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria Name (A to Z)
    #Então os produtos serão exibidos nessa ordem

CT07: Filtrando produtos por nome de (Z a A)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria de (Z a A)
    #Então os produtos serão exibidos nessa ordem

#CT03: Filtrando produtos por preço (baixo a auto)
    #Dado que o usuário esteja logado no sistema
    #Quando selecionar a categoria de baixo a auto
    #Então os produtos serão exibidos nessa ordem

#CT04: Filtrando produtos por preço (auto a baixo)
    #Dado que o usuário esteja logado no sistema
    #Quando selecionar a categoria de auto a baixo
    #Então os produtos serão exibidos nessa ordem

