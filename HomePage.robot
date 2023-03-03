# DOCUMENTACION: Automatizacion de pruebas para la aplicacion web de Tpago empresa BANCARD S.A.
# TESTER: Miguel Angel Esquivel Rios

*** Settings ***

Documentation        Funcionalidad de la pagina de inicio
Library              SeleniumLibrary
Resource             ./Resource/Base.robot

*** Test Cases ***

Test001 - Abrir aplicacion web

        [Tags]                           Test001 - Abrir aplicacion web
        Pagina de inicio
        Title should be                  Tpago
        Page should contain              INICIAR SESIÓN                         # Validamos que la pagina contenga el texto
        Page should contain              CREAR UNA CUENTA NUEVA
        Capture Page Screenshot
        Close Browser







