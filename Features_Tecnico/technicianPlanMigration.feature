Feature: Migración de plan en la aplicación web.
  como técnico
  quiero cambiar de plan
  para obtener mejores beneficios.

  Scenario: el técnico del equipo quiere cambiar de plan. (ruta feliz)
    Given el técnico de equipo desea cambiar de plan
    When el técnico vaya a la opción “my plan”
    And seleccione la opción “upgrade”
    And elija el plan “plus”
    Then el sistema le mostrará una ventana flotante con la pregunta “are you sure?”
    And coloque sus datos en la pasarela de pago
    And seleccione el botón “cambiar”
    Then el técnico del equipo logrará mejorar su plan y obtener los beneficios que ofrece este plan.

  Scenario: el técnico del equipo quiere cambiar de plan, pero antes de finalizar el proceso, decide cambiar su elección.  (ruta alternativa)
    Given el técnico de equipo desea cambiar de plan.
    When el técnico va a la opción "my plan".
    And selecciona la opción "upgrade".
    And elige el plan "plus".
    Then el sistema le mostrará una ventana flotante con la pregunta "are you sure?"
    And elige la opción "cancelar".
    Then el sistema cancelará el proceso de cambio de plan y volverá al estado anterior sin realizar cambios en el plan del técnico.


  Scenario: el técnico del equipo quiere cambiar de plan, pero experimenta un fallo al realizar el pago. (ruta triste)
    Given el técnico de equipo desea cambiar de plan.
    When el técnico va a la opción "my plan".
    And selecciona la opción "upgrade".
    And elige el plan "plus".
    Then el sistema le mostrará una ventana flotante con la pregunta "are you sure?"
    And el técnico decide continuar y coloca sus datos en la pasarela de pago.
    And después de hacer clic en el botón "cambiar", se produce un fallo en la pasarela de pago.
    Then el sistema mostrará un mensaje de error que indica que el pago no se pudo procesar correctamente.
    And proporcionará al técnico opciones para intentar nuevamente, verificar su información de pago
