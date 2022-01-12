***Settings***
Documentation      Cenarios de teste para a pagina usuarios no site Automação do Batista
Test Setup         Abrir navegador
Test Teardown      Fechar navegador       
Resource          ../Resources/base.robot
Resource          ../Resources/page/home.robot
Resource          ../Resources/page/users.robot  

***Test Cases***
Funcionalidade: Criar Usuario Valido
    Dado que esteja na home do site
    Quando clicar em formulario
    E clicar em criar usuários
    E preencher as informações  
    E clicar no botão Criar
    Então deve ser exibida a mensagem "Usuário Criado com sucesso"
Funcionalidade: Listar usuários
    Dado que esteja na home do site
    Quando clicar em formulario
    E clicar em lista usuários
    Então deve ser exibida uma lista com todos usuarios cadastrados   

Funcionalidade: Excluir um Usuario
    Dado que esteja na lista de usuarios
    Quando clicar na paginação ultima pagina
    E clicar em icone delete
    E clicar em ok
    Então o usuario deve ser removido da lista        