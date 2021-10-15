*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
#Setup e Teardown
Abrir navegador
    Open Browser     about:blank  ${BROWSER}
    Go To            ${URL2}

Fechar navegador
    Close Browser

#Executando automação Teste 01
#realizando a primeira busca de produto
Dado que acessar a página inicial do site
    Go To                ${URL}
    Maximize Browser Window   
    Sleep                8

Quando submeto o "${PRODUTO}" no campo de pesquisa
    Click Element  ${CAMPO_PESQUISA}
    Sleep          2
    Input Text     ${DIGITAR_PESQUISA}   ${PRODUTO}
    Sleep          4
   
Realizo a compra o produto no site
    Click Element   ${ITEM} 
    Sleep           8
    Click Element   ${TAMANHO_ITEM} 
    Sleep           4
    Click Element   ${COMPRAR} 
    Sleep           4
    
#realizando a segunda busca de produto
Também o "${PRODUTO2}" no campo de pesquisa
    Click Element  ${CAMPO_PESQUISA}
    Sleep          2
    Input Text     ${DIGITAR_PESQUISA}  ${PRODUTO2}
    Sleep          4
   
Realizo a segunda compra o produto no site
    Click Element   ${SEGUNDO_ITEM}
    Sleep           8
    Click Element   ${TAMANHO_SEGUNDO_ITEM}
    Sleep           4
    Click Element   ${COMPRAR}
    Sleep           4

Então deve esvaziar a sacola e sair do site
    Click Element        ${PAGAR}
    Sleep                6
    Mouse Down On Image  ${MOUSE_SOBRE_IMAGEM_01}
    Sleep                3
    Click Element        ${ICONE_EXCLUIR_01}
    Sleep                5
    Mouse Down On Image  ${MOUSE_SOBRE_IMAGEM_02}
    Sleep                3
    Click Element        ${ICONE_EXCLUIR_02} 
    Sleep                6
