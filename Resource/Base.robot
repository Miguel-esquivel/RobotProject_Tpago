# DOCUMENTACION: Automatizacion de pruebas para la aplicacion web de Tpago empresa BANCARD S.A.
# TESTER: Miguel Angel Esquivel Rios

*** Settings ***

Library             SeleniumLibrary

*** Variables ***

${url}=             https://temp.bancard.com.py:9443/
${navegador}=       chrome

*** Keywords ***

Pagina de inicio
    Open Browser                         ${url}     ${navegador}
    Maximize browser window

