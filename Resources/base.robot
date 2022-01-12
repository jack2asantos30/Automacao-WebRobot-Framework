*** Settings ***
Documentation    Base para todos os testes do site Bruno batista
Library    SeleniumLibrary
Library    String

*** Variables ***
${URL}         https://automacaocombatista.herokuapp.com/treinamento/home
${BROWSER}     chrome


*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
       



Fechar navegador
    Close Browser


