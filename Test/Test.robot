*** Settings ***
Resource        ../resource/Resource.robot
Resource        ../variables/Variables.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Caso de Teste 01: Buscar de produto
    Dado que acessar a página inicial do site
    Quando submeto o "${PRODUTO}" no campo de pesquisa 
    Realizo a compra o produto no site
    Também o "${PRODUTO2}" no campo de pesquisa 
    Realizo a segunda compra o produto no site
    Então deve esvaziar a sacola e sair do site
