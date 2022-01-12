*** Settings ***
Documentation      Page objects da pagina users
Library            SeleniumLibrary
Library            String  

*** Variables ***
${NOME}                id=user_name
${SOBRENOME}           id=user_lastname 
${EMAIL}               id=user_email 
${ENDEREÇO}            id=user_address
${UNIVERSIDADE}        id=user_university
${PROFISSÃO}           id=user_profile 
${GENERO}              id=user_gender  
${IDADE}               id=user_age 
${BOTAO_CRIAR}         css=.actions   
${MENSAGEM_SUCESSO}    id=notice
${LISTA_USUARIO}       xpath=//h5 
${ULTIMA_PAGINA}       xpath=//a[contains(text(),'Último')]
${BOTAO_DELETE}        xpath=(//a[contains(text(),'delete')])[3]
${NOME_EXCLUIDO}       id=notice



*** Keywords ***
E preencher as informações 
    Wait Until Element Is Visible    ${NOME}
    Input Text      ${NOME}         Jaqueline
    Input Text      ${SOBRENOME}    Santos   
    Input Text      ${EMAIL}        jaquelineasantos245@gmail.com
#${ENDEREÇO}        id=user_address
#${UNIVERSIDADE}    id=user_university
#${PROFISSÃO}       id=user_profile 
#${GENERO}          id=user_gender  
#${IDADE}           id=user_age


 E clicar no botão Criar
    Wait Until Element Is Visible    ${BOTAO_CRIAR}
    Click Element                    ${BOTAO_CRIAR}  

Então deve ser exibida a mensagem "${MENSAGEM}"    
    Wait Until Element Is Visible    ${MENSAGEM_SUCESSO}
    Element Text Should Be     ${MENSAGEM_SUCESSO}      ${MENSAGEM}

Então deve ser exibida uma lista com todos usuarios cadastrados        
    Wait Until Element Is Visible    ${LISTA_USUARIO}
    Element Should Be Visible        ${LISTA_USUARIO}    
    

Quando clicar na paginação ultima pagina
    Wait Until Element Is Visible    ${ULTIMA_PAGINA}
    Click Element                    ${ULTIMA_PAGINA}
    
    
E clicar em icone delete 
    Wait Until Element Is Visible    ${BOTAO_DELETE} 
    Click Element                    ${BOTAO_DELETE}  
      
    
E clicar em ok
     Handle Alert     ACCEPT

Então o usuario deve ser removido da lista
    Wait Until Element Is Visible      ${NOME_EXCLUIDO}
    Element Text Should Be             ${NOME_EXCLUIDO}    
    ...    Seu Usuário foi removido com sucesso!   
    