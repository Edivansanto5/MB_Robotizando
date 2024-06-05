*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

CT01: Filtrando produtos por nome de (A a Z)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria de (A a Z)
    Então os produtos serão exibidos nessa ordem

CT02: Filtrando produtos por nome de (Z a A)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria de (Z a A)
    Então os produtos serão exibidos nessa ordem

CT03: Filtrando produtos por preço (baixo a auto)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria de baixo a auto
    Então os produtos serão exibidos nessa ordem

CT03: Filtrando produtos por preço (auto a baixo)
    Dado que o usuário esteja logado no sistema
    Quando selecionar a categoria de auto a baixo
    Então os produtos serão exibidos nessa ordem

