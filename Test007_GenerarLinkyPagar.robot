# DOCUMENTACION: Automatizacion de pruebas para la aplicacion web de Tpago empresa BANCARD S.A.
# TESTER: Miguel Angel Esquivel Rios

*** Settings ***

Documentation         Prueba externa generacion de link desde el Portal de Comercios
Library               SeleniumLibrary
Resource              ./Resource/Base.robot

*** Test Cases ***

Test006 - Generamos limk desde Portal de comercios

        [Tags]                     Test006 - Generamos limk desde Portal de comercios
        Pagina del Portal de comercio
        input text                 id=email     carlos.villalba@bancard.com.py
        input text                 id=password  bancard2022
        execute javascript         window.scrollTo(0,100)
        click element              //button[@id='basic-login-button']
        sleep   8
        execute javascript         window.scrollTo(0,200)
        sleep   2
        click element              //a[@id='payment_link']
        sleep   1
        input text                 id=amount-payment-link     150000
        sleep   1
        input text                 id=description-payment-link   Remera oficial de OLIMPIA
        sleep   1
        click button               //button[contains(text(),'Crear')]
        sleep   5
        execute javascript         window.scrollTo(0,300)
        click button               //*[@id="payment-link"]/div/div/div/div[2]/div/div[3]/button
        sleep   2
        ${link}=                       Get Value              id=payment-link-url
        Execute javascript             window.scrollTo(0,500)
        sleep                          2
        open browser                   ${link}               chrome
        sleep   2
        Capture Page Screenshot
        Close Browser

