Feature: Selección apertura del chat en la aplicación web.
  Como técnico
  quiero recibir una notificación del sistema
  para iniciar una conversación vía chat con el técnico

  Scenario: el técnico del equipo recibe la notificación donde el sistema le informa sobre la solicitud de apertura de chat y confirma la solicitud. (ruta feliz)
    Given que el técnico recibw una notificación con una invitación al chat con el dueño del equipo
    When el técnico ingresa a la sección “notificaciones” en el menú principal.
    And seleccione la notificación
    Then el sistema le redirigirá al chat con el dueño del equipo.

  Scenario: el técnico recibe una notificación donde se informa sobre la solicitud de apertura de chat, pero decide no confirmar o ignorar la solicitud. (ruta alternativa)
    Given que el técnico recibió una notificación con una invitación al chat con el dueño del equipo.
    When el técnico ingresa a la sección "notificaciones" en el menú principal.
    And en lugar de seleccionar la notificación, el técnico decide no responder o ignorarla.
    Then el sistema marca la notificación como vista o leída, pero no redirige al técnico a ningún chat en particular.

  Scenario: el técnico recibe la notificación donde se informa que la “solicitud apertura chat” ha sido cancelada (ruta triste)
    Given que el dueño del equipo ya eligió previamente a otro técnico y reciba la notificación “solicitud apertura chat cancelada”
    When seleccione la notificación
    And el sistema no lo redirigirá a ningún lado
