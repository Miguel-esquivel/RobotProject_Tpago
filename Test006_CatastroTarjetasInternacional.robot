# DOCUMENTACION: Automatizacion de pruebas para la aplicacion web de Tpago empresa BANCARD S.A.

*** Settings ***

Documentation       Funcionalidad del registro de tarjetas
Library             SeleniumLibrary
Resource            ./Resource/Base.robot

*** Test Cases ***

Test005 - Autenticación exitosa TC VISA - Itau

               [Tags]                             Test005 - Autenticación exitosa TC VISA - Itau
               Pagina de inicio
               Click Element                      //a[contains(text(),'INICIAR SESIÓN')]
               Sleep                              1
               Input text                         id=email                                   miguel.esquivel@bancard.com.py
               Input text                         id=password                                Termito.8446
               Click Button                       name=commit
               Secreta                            Miguel
               Sleep                              1
               Click Element                      (//div[contains(.,'Tus tarjetas')])[6]
               Sleep                              1
               Click Element                      (//div[contains(.,'Agregar tarjeta')])[7]
               Sleep                              1
               Input text                         name=card_pan                              4000000000001000
               Input text                         name=expiry                                0126
               Input text                         name=cvv                                   000
               execute javascript                 window.scrollTo(0,100)
               Click button                       //input[@id='default_card']
               Click button                       name=commit
               Sleep                              1
               Mensaje - Agregar tu tarjeta       ¡Agregamos
               Capture Page Screenshot
               Close browser

Test005 - Catastro de tarjeta AMEX

               [Tags]                        Test005 - Catastro de tarjeta AMEX
               Pagina de inicio
               Click Element                 //a[contains(text(),'INICIAR SESIÓN')]
               Sleep                         1
               Input text                    id=email                                 miguel.esquivel@bancard.com.py
               Input text                    id=password                              Termito.8446
               Click Button                  name=commit
               Secreta                       Miguel
               Sleep                         1
               Click Element                 (//div[contains(.,'Tus tarjetas')])[6]
               Sleep                         1
               Click Element                 (//div[contains(.,'Agregar tarjeta')])[7]
               Sleep                         1
               Input text                    name=card_pan                             379191201028818
               Input text                    name=expiry                                          0427
               Input text                    name=cvv                                              126
               execute javascript            window.scrollTo(0,100)
               #Click button                  //input[@id='default_card']
               Click button                  name=commit
               Sleep                         1
               Mensaje - Agregar tu tarjeta         ¡Agregamos
               Capture Page Screenshot
               Close browser

Test005 - Catastro de tarjeta AMEX

               [Tags]                        Test005 - Catastro de tarjeta AMEX
               Pagina de inicio
               Click Element                 //a[contains(text(),'INICIAR SESIÓN')]
               Sleep                         1
               Input text                    id=email                                 miguel.esquivel@bancard.com.py
               Input text                    id=password                              Termito.8446
               Click Button                  name=commit
               Secreta                       Miguel
               Sleep                         1
               Click Element                 (//div[contains(.,'Tus tarjetas')])[6]
               Sleep                         1
               Click Element                 (//div[contains(.,'Agregar tarjeta')])[7]
               Sleep                         1
               Input text                    name=card_pan                             4000000000000002
               Input text                    name=expiry                                          0126
               Input text                    name=cvv                                              111
               execute javascript            window.scrollTo(0,100)
               Click button                  //input[@id='default_card']
               Click button                  name=commit
               Sleep                         1
               Mensaje - Agregar tu tarjeta         ¡Agregamos
               Capture Page Screenshot
               Close browser
