*** Variables ***
${URL}              https://havaianas.com.br/
${URL2}             https://www.google.com.br/
${BROWSER}          chrome
${PRODUTO}          Chinelo Havaianas Power
${PRODUTO2}         Havaianas rasteirinhas


#LOCATOR
${CAMPO_PESQUISA}         xpath=(//div[contains(.,'O que você procura?')])[3]
${DIGITAR_PESQUISA}       xpath=//input[@name='q']
${ITEM}                   xpath=//*[@id="shoptag-1"]/a/span
${TAMANHO_ITEM}                xpath=//span[contains(.,"39/40")]
${COMPRAR}                xpath=//*[@id="buy__button"]/span[1]
${SEGUNDO_ITEM}           xpath=//*[@id="shoptag-1"]/a/span
${TAMANHO_SEGUNDO_ITEM}   xpath=//span[contains(.,"35/36")]
${PAGAR}                  xpath=//*[@id="pay__button"]/span[1]
${MOUSE_SOBRE_IMAGEM_01}  xpath=/html/body/div[5]/div[1]/div/div[2]/div[1]/div/div[2]/div[3]/div[1]/div[2]/div[2]/div[4]/a/picture/img
${ICONE_EXCLUIR_01}       xpath=//a[@class="remove__link remove__confirm"]
${MOUSE_SOBRE_IMAGEM_02}  xpath=/html/body/div[5]/div/div[1]/div[2]/div[1]/div/div[2]/div[3]/div/div[2]/div[2]/div[3]/a/picture/img
${ICONE_EXCLUIR_02}       xpath=//a[@class="remove__link remove__confirm"]