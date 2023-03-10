# DOCUMENTACION: Automatizacion de pruebas para la aplicacion web de Tpago empresa BANCARD S.A.

*** Setting ***

Documentation        Funcionalidad de la pagina de registro de Tpago - Validación de datos.
Library              SeleniumLibrary
Resource             ./Resource/Base.robot

*** Test Cases ***

Test002 - Visualizar la pagina de registro

        [Tags]                        Test002 - Visualizar la pagina de registro
        Pagina de inicio
        Click Element                 //a[contains(text(),'CREAR UNA CUENTA NUEVA')]
        Sleep                         1
        Page should contain           Registrate
        Capture Page Screenshot
        Close Browser

Test002 - Validar de nombre de usuario

        [Tags]                        Test002 - Validación de nombre de usuario
        Pagina de registro
        input text                    id=first_name                        5555555
        input text                    id=last_name                         Benitez
        input text                    id=ci                                5316835
        input text                    id=cell_phone                        0981111111
        input text                    id=email                             migueesquivelrios@gmail.com
        execute javascript            window.scrollTo(0,100)
        input password                id=password                          Termito.8446
        input password                id=password_confirmation             Termito.8446
        click button                  //input[@id='terms_and_conditions']
        click button                  name=commit
        Mensaje alerta Nombre         Tu nombre solo puede contener letras
        execute javascript            window.scrollTo(0,-100)
        Capture Page Screenshot
        Close Browser

Test002 - Validación de apellido de usuario

        [Tags]                        Test002 - Validación de apellido de usuario
        Pagina de registro
        input text                    id=first_name                        Miguel
        input text                    id=last_name                         5555555
        input text                    id=ci                                5316835
        input text                    id=cell_phone                        0981111111
        input text                    id=email                             migueesquivelrios@gmail.com
        execute javascript            window.scrollTo(0,100)
        input password                id=password                          Termito.8446
        input password                id=password_confirmation             Termito.8446
        click button                  //input[@id='terms_and_conditions']
        click button                  name=commit
        Mensaje Alerta Apellido       Tu apellido solo puede contener letras
        execute javascript            window.scrollTo(0,-100)
        Capture Page Screenshot
        Close Browser

Test002 - Validación de la CI de usuario

        [Tags]                        Test002 - Validación de la CI de usuario
        Pagina de registro
        input text                    id=first_name                        Miguel
        input text                    id=last_name                         Esquivel
        input text                    id=ci                                5V168TG
        input text                    id=cell_phone                        0981111111
        input text                    id=email                             migueesquivelrios@gmail.com
        execute javascript            window.scrollTo(0,100)
        input password                id=password                          Termito.8446
        input password                id=password_confirmation             Termito.8446
        click button                  //input[@id='terms_and_conditions']
        click button                  name=commit
        execute javascript            window.scrollTo(0,-100)
        Mensaje alerta Cedula         El formato de la cédula ingresada es incorrecto
        execute javascript            window.scrollTo(0,-100)
        Capture Page Screenshot
        Close Browser

Test002 - Validación del celular de usuario

        [Tags]                        Test002 - Validación del celular de usuario
        Pagina de registro
        input text                    id=first_name                         Miguel
        input text                    id=last_name                          Esquivel
        input text                    id=ci                                 5316835
        input text                    id=cell_phone                         098W3881TP
        input text                    id=email                              migueesquivelrios@gmail.com
        execute javascript            window.scrollTo(0,100)
        input password                id=password                           Termito.8446
        input password                id=password_confirmation              Termito.8446
        click button                  //input[@id='terms_and_conditions']
        click button                  name=commit
        Mensaje Alerta Celular        El numero de teléfono solo puede contener números
        Capture Page Screenshot
        Close Browser

Test002 - Validación del correo de usuario

        [Tags]                        Test002 - Validación del correo de usuario
        Pagina de registro
        input text                    id=first_name                          Miguel
        input text                    id=last_name                           Esquivel
        input text                    id=ci                                  5316835
        input text                    id=cell_phone                          0984388144
        input text                    id=email                               miguelesquivel170@gmail.com
        execute javascript            window.scrollTo(0,100)
        input password                id=password                            Termito.8446
        input password                id=password_confirmation               Termito.8446
        click button                  //input[@id='terms_and_conditions']
        click button                  name=commit
        Mensaje Alerta Correo         Detectamos que el email ingresado ya se encuentra registrado. Por favor ingresá uno distinto
        execute javascript            window.scrollTo(0,-100)
        Capture Page Screenshot
        Close Browser

Test002 - Validación de la contraseña de usuario

        [Tags]                        Test002 - Validación de la contraseña de usuario
        Pagina de registro
        input text                    id=first_name                          Miguel
        input text                    id=last_name                           Esquivel
        input text                    id=ci                                  5316835
        input text                    id=cell_phone                          0984388144
        input text                    id=email                               miguel.esquivel@bancard.com.py
        execute javascript            window.scrollTo(0,100)
        input password                id=password                            Termito.8446
        input password                id=password_confirmation               Termito.844
        click button                  //input[@id='terms_and_conditions']
        click button                  name=commit
        Mensaje Alerta Contraseña     Las contraseñas no coinciden
        Capture Page Screenshot
        Close Browser

Test002 - Registro exitoso del usuario

        [Tags]                        Test002 - Registro exitoso del usuario
        Pagina de registro
        input text                    id=first_name                           Miguel
        input text                    id=last_name                            Esquivel
        input text                    id=ci                                   5316836
        input text                    id=cell_phone                           0981871532
        input text                    id=email                                miguelesquivel170@gmail.com
        execute javascript            window.scrollTo(0,100)
        input password                id=password                             Termito.8446
        input password                id=password_confirmation                Termito.8446
        click button                  //input[@id='terms_and_conditions']
        click button                  name=commit
        execute javascript            window.scrollTo(0,100)
        Mensaje Registro exitoso      Verificar
        Capture Page Screenshot
        Close Browser