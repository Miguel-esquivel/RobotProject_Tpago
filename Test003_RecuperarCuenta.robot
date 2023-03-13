# DOCUMENTACION: Automatizacion de pruebas para la aplicacion web de Tpago empresa BANCARD S.A.

*** Settings ***

Documentation       Funcionalidad del reseteo de contraseña - Restablecer contraseña
Library             SeleniumLibrary
Resource            ./Resource/Base.robot

*** Test Cases ***

Test003 - Visualizar pantalla de reseteo de contraseña

         [Tags]                        Test003 - Visualizar pantalla de reseteo de contraseña
         Pagina de inicio
         Click Element                 //a[contains(text(),'INICIAR SESIÓN')]
         execute javascript            window.scrollTo(0,100)
         Sleep                         1
         Click Element                 //a[contains(text(),'¿Olvidaste tu contraseña?')]
         Sleep                         1
         Capture Page Screenshot
         Close Browser

Test003 - Envio con campo vacio

         [Tags]                        Test003 - Envio con campo vacio
         Pagina de reseteo
         Click Button                  //button[contains(text(),'Enviar')]
         Correo no ingresado           No se encontró un usuario para el email ingresado.
         Capture Page Screenshot
         Close browser


Test003 - Correo inexistente

         [Tags]                        Test003 - Correo inexistente
         Pagina de reseteo
         Input text                    id=sessionEmail                     pepitoperez@gmail.com
         Click Button                  //button[contains(text(),'Enviar')]
         Correo No existe              No se ha encontrado un usuario con este mail.
         Capture Page Screenshot
         Close Browser

Test003 - Reseteo de contraseña exitosa

         [Tags]                        Test003 - Reseteo de contraseña exitosa
         Pagina de reseteo
         Input text                    id=sessionEmail                     miguelesquivel170@gmail.com
         Click Button                  //button[contains(text(),'Enviar')]
         Reseteo exitoso               Se te envió un mail a tu cuenta para actualizar tu contraseña.
         Capture Page Screenshot
         Close Browser




