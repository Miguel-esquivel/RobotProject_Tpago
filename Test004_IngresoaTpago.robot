# DOCUMENTACION: Automatizacion de pruebas para la aplicacion web de Tpago empresa BANCARD S.A.

*** Settings ***
Documentation       Funcionalidad del inicio de sesion
Library             SeleniumLibrary
Resource            ./Resource/Base.robot

*** Test Cases ***

Test004 - Visualizar pantalla de inicio de sesion

         [Tags]                        Test004 - Visualizar pantalla de inicio de sesion
         Pagina de inicio
         Click Element                 //a[contains(text(),'INICIAR SESIÓN')]
         Sleep                         1
         Page should contain           E-mail
         Page should contain           Contraseña
         Capture Page Screenshot
         Close Browser

Test004 - Usuario no valido

         [Tags]                        Test004 - Usuario no valido
         Pagina de logeo
         Input text                    id=email                                 valenzuela@bancard.com.py
         Input text                    id=password                              Hola1234567
         Click Button                  name=commit
         Credenciales inválidas        No existe un usuario con el email ingresado
         Capture Page Screenshot
         Close Browser

Test004 - Usuario no activado

         [Tags]                        Test004 - Usuario no activado
         Pagina de logeo
         Input text                    id=email                                 miguelesquivel170@gmail.com
         Input text                    id=password                              Termito.8446
         Click Button                  name=commit
         Usuario no activo             El usuario ingresado aun no ha sido activado
         Capture Page Screenshot
         Close Browser

Test004 - Ingreso exitoso

         [Tags]                        Test004 - Ingreso exitoso
         Pagina de logeo
         Input text                    id=email                                 miguel.esquivel@bancard.com.py
         Input text                    id=password                              Termito.8446
         Click Button                  name=commit
         Secreta                       Miguel
         Capture Page Screenshot
         Close Browser


