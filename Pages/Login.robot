*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login.robot


*** Keywords ***
Dado que o usuário esteja na tela de Home
    open browser    htpps://www.saucedemo.com/    firefox