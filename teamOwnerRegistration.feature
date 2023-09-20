Feature: Registro de dueño de equipo en la aplicación web
    Como dueño de equipo
    Quiero registrar mis datos y crear una cuenta
    Para utilizar el servicio que proporciona la aplicación

    Background: 
        Given que el dueño de equipo está en el landing page
        And decide registrarse en la plataforma

    Scenario: Dueño de equipo se registra exitosamente (Ruta Feliz)
        When presiona el botón "Sign Up"
        Then se abrirá un formulario para ingresar sus datos
        And al completar y presionar el botón "Submit,"
        Then su registro es exitoso y recibe un mensaje de confirmación

    Scenario: Dueño de equipo introduce datos incorrectos (Ruta Alternativa)
        When presiona el botón "Sign Up"
        And completa el formulario con datos incorrectos
        Then recibe un mensaje de error que dice: "Datos incorrectos, por favor verifique e intente nuevamente."

    Scenario: Dueño de equipo abandona el proceso de registro (Ruta Triste)
        When presiona el botón "Sign Up"
        And abandona el formulario sin completarlo
        Then el proceso de registro se cancela y no se realiza ninguna acción adicional
