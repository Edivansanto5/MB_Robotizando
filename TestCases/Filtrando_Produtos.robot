*** Settings ***
Library      SeleniumLibrary
Resource     ../Pages/Login.robot
Resource     ../Pages/Filtros/Filtrando_ProdutosZA.robot
Resource     ../Pages/Filtros/Filtrando_ProdutosAZ.robot
Resource    ../Pages/Filtros/Filtrando_Produtos_price_low_to_high.robot


*** Keywords ***

CT06: Filtrando produtos por nome de (A a Z)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria Name (A to Z)
    #Então os produtos serão exibidos nessa ordem

CT07: Filtrando produtos por nome de (Z a A)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria de (Z a A)
    #Então os produtos serão exibidos nessa ordem

CT08: Filtrando produtos por preço (baixo a auto)
    Dado que o usuário esteja na tela principal
    E ao inserir o login e senha corretos
    Quando estiver logado no sistema
    E selecionar filtrar os produtos na categoria baixo a auto
    #Então os produtos serão exibidos nessa ordem

#CT04: Filtrando produtos por preço (auto a baixo)
    #Dado que o usuário esteja logado no sistema
    #Quando selecionar a categoria de auto a baixo
    #Então os produtos serão exibidos nessa ordem

