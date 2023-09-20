Feature: Pago de reporte de equipo en la aplicación web
    Como dueño de equipo
    Quiero realizar el pago de la documentación del reporte técnico
    Para poder saber qué problema tiene mi equipo

    Background:
        Given que el dueño del equipo desea realizar el pago del reporte técnico
        And se encuentra en la interfaz del chat

    Scenario: Dueño del equipo realiza el pago del reporte con éxito (Ruta Feliz)
        When presiona el botón "pay report"
        Then se mostrará una interfaz tipo formulario para ingresar los datos de la tarjeta
        And cuando los datos de la tarjeta sean validados mediante la API de Stripe
        Then el sistema valida su pago de reporte y le otorgará acceso al servicio correspondiente

    Scenario: Tarjeta de crédito o débito incorrecta (Ruta Alternativa)
        Given que el dueño del equipo ingresa los datos de una tarjeta de crédito o débito inválida
        When se validan los datos de la tarjeta mediante la API de Stripe
        Then la vista muestra un aviso informando que la tarjeta es inválida

    Scenario: Falla en el proceso de pago (Ruta Triste)
        Given que el dueño del equipo ha iniciado el proceso de pago
        And se produce un error en la API de Stripe o en la conexión
        When intenta completar el pago
        Then el usuario recibe un mensaje de error y se le pide que intente nuevamente
