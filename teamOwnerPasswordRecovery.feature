Feature: Recuperación de contraseña en la aplicación web
    Como dueño de equipo
    Quiero cambiar mi contraseña olvidada
    Para poder acceder a la aplicación web

    Background:
        Given que el dueño de equipo ha olvidado su contraseña y quiere iniciar sesión

    Scenario: Dueño de equipo recupera contraseña exitosamente (Ruta Feliz)
        When hace clic en el enlace "Recover Password"
        And recibe un correo con un código
        And ingresa el código correctamente
        Then el sistema valida el código
        And le permite cambiar la contraseña
        And la vista muestra un aviso con la etiqueta: "Password Updated"

    Scenario: Dueño de equipo ingresa un código incorrecto (Ruta Alternativa)
        When hace clic en el enlace "Recover Password"
        And recibe un correo con un código
        And ingresa un código incorrecto
        Then el sistema no valida el código
        And la vista muestra un aviso con la etiqueta: "Invalid Code"

    Scenario: Dueño de equipo no recibe el correo con el código (Ruta Triste)
        When hace clic en el enlace "Recover Password"
        And no recibe el correo con el código dentro de un tiempo razonable
        Then tiene la opción de solicitar el envío del correo nuevamente
        And la vista muestra un aviso con la etiqueta: "Email not received? Click here to resend"
