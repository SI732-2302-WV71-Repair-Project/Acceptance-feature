Feature: Cancelación de suscripción en la aplicación web.
  como técnico
  quiero cancelar mi suscripción
  para no tener que pagar mensualmente

  Scenario: el técnico del equipo quiere cancelar su suscripción. (ruta feliz)
    Given que el técnico del equipo quiere cancelar su suscripción
    When seleccione la opción “my plan”
    And seleccione el plan “free”
    And seleccione el botón “choose this plan”
    Then el sistema le mostrará una ventana flotante con la pregunta “are you sure?”
    When el técnico seleccione le botón “confirmar”
    Then el sistema cambiará su plan a free y le redirigirá a la página de “my plan”

  Scenario: el técnico del equipo cambio de opinión con respecto a la cancelación de su suscripción. (ruta alternativa)
    Given que el técnico del equipo quiere cancelar su suscripción
    When seleccione la opción “my plan”
    And seleccione el plan “free”
    And seleccione el botón “choose this plan”
    Then el sistema le mostrará una ventana flotante con la pregunta “are you sure?”
    When el técnico seleccione le botón “cancelar”
    Then el sistema cancelará la operación y le redirigirá a la página de “my plan”

  Scenario: el técnico del equipo quiere cancelar su suscripción, pero sucede un error en el sistema.  (ruta triste)
    Given que el técnico del equipo quiere cancelar su suscripción
    When seleccione la opción “my plan”
    And seleccione el plan “free”
    And seleccione el botón “choose this plan”
    Then el sistema le mostrará una ventana flotante con la pregunta “are you sure?”
    When el técnico seleccione le botón “confirmar”
    Then el sistema sufra algún error de conectividad o error relacionado a la base de datos
    Then el sistema le mostrará una ventana flotante con el mensaje de “surgió un error, vuelve a intentarlo”
    And le redirigirá a la página de “my plan”
