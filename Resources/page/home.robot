*** Settings ***
Documentation    Page objects da home do site bruno batista 
Library          SeleniumLibrary 
Library          String


*** Variables ***
${HOME_TITULO}                Automação com Batista    
${HOME_FORMULARIO}            xpath=//a[contains(text(),'Formulário')]
${CRIAR_USUARIO}              xpath=//a[contains(text(),'Criar Usuários')]
${LISTA_USUARIO}              xpath=//a[contains(text(),'Lista de Usuários')] 
${MENSAGEM_LISTA_DE_USUARIO}  xpath=//h5[@class='center']

*** Keywords ***
Dado que esteja na home do site
    Title Should Be    ${HOME_TITULO}    

Quando clicar em formulario
    Wait Until Element Is Visible        ${HOME_FORMULARIO}
    Click Element                        ${HOME_FORMULARIO}

E clicar em criar usuários     
    Wait Until Element Is Visible        ${CRIAR_USUARIO}
    Click Element                        ${CRIAR_USUARIO}            

E clicar em lista usuários
    Wait Until Element Is Visible        ${LISTA_USUARIO} 
    Click Element                        ${LISTA_USUARIO} 
        
 Dado que esteja na lista de usuarios
     Quando clicar em formulario
     E clicar em lista usuários
     Element Text Should Be    ${MENSAGEM_LISTA_DE_USUARIO}    Lista de Usuários!!    

         