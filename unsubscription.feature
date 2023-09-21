Feature: Cancelación de suscripción en la aplicación web.
  Como dueño de equipo
  Quiero cancelar mi suscripción
  Para no tener que pagar mensualmente

  Scenario: dueño de equipo cancela su suscripción exitosamente (ruta feliz)
    Given que el dueño del equipo quiere cancelar su suscripción
    When vaya a la opción “my plan”
    And seleccione el plan “free” y presione en el botón “choose this plan”
    Then el dueño tendrá que confirmar el cambio de plan para poder cancelar su suscripción.

  Scenario: dueño de equipo cambia de opinión y no cancela la suscripción (ruta alternativa)
    Given que el dueño del equipo quiere cancelar su suscripción
    When vaya a la opción “my plan”
    And presione en el botón “choose this plan”
    Then el dueño presiona “cancel” al cambio de plan y se mantiene su suscripción actual.

  Scenario: error en el proceso de cancelación de suscripción (ruta triste)
    Given que el dueño del equipo quiere cancelar su suscripción
    When vaya a la opción “my plan”
    And seleccione el plan “free” y presione en el botón “choose this plan”
    And ocurre un error en el sistema durante el proceso
    Then el dueño recibirá un mensaje de error y se le sugerirá que intente nuevamente más tarde.
