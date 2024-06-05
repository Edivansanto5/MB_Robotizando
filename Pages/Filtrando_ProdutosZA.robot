*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/Filtrando_ProdutosAZ.robot
Resource     ../Pages/Filtrando_ProdutosZA.robot


*** Keywords ***

Quando selecionar a categoria de (Z a A)
  # Seleciona a opção "Name (Z to A)"
   
    Select From List By Value    //select[@data-test='product-sort-container']    za
  
    ${selected_option}=    Get Selected List Label    //select[@data-test='product-sort-container']
    Log    Selected option: ${selected_option}
    Sleep    13s
    Should Be Equal    ${selected_option}    Name (Z to A)
    Sleep     5s
    