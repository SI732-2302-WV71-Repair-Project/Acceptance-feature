Feature: Selección apertura del chat en la aplicación web
    Como dueño del equipo dañado
    Quiero recibir una notificación del sistema
    Para iniciar una conversación vía chat con el técnico

    Background:
        Given que el dueño del equipo ya eligió previamente al técnico

    Scenario: El dueño del equipo recibe una notificación para abrir el chat con el técnico seleccionado y acepta (Ruta Feliz)
        When recibe la notificación con el mensaje "Solicitud apertura chat aceptada"
        And selecciona la notificación
        And presiona el botón "Abrir chat"
        Then el sistema lo redirige al chat con el técnico
        And notifica al técnico para unirse al chat

    Scenario: El dueño del equipo ignora la notificación de apertura de chat (Ruta Alternativa)
        When recibe la notificación con el mensaje "Solicitud apertura chat aceptada"
        And decide no interactuar con la notificación
        Then el sistema no realiza ninguna acción adicional
        And la notificación queda pendiente hasta que el usuario decida interactuar con ella

    Scenario: El dueño del equipo recibe una notificación donde se informa que la "Solicitud apertura chat" ha sido cancelada (Ruta Triste)
        When recibe la notificación con el mensaje "Solicitud apertura chat cancelada"
        And selecciona la notificación
        And presiona el botón "Abrir chat"
        Then el sistema lo redirige a la lista de técnicos disponibles
