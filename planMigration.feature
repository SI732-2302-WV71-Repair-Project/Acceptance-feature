Feature: Migración de plan en la aplicación web.
  Como dueño de equipo
  Quiero cambiar de plan
  Para obtener mejores beneficios

  Scenario: dueño de equipo cambia de plan exitosamente (ruta feliz)
    Given que el dueño de equipo desea cambiar de plan
    When vaya a la opción “my plan”
    And seleccione la opción “upgrade” y detallar el plan “plus”
    And confirme la etiqueta “sure to change plans?” y coloque sus datos en la pasarela de pago
    Then el dueño del equipo logrará mejorar su plan y obtener los beneficios que ofrece este plan.

  Scenario: dueño de equipo cancela el proceso de cambio de plan (ruta alternativa)
    Given que el dueño de equipo desea cambiar de plan
    When vaya a la opción “my plan”
    And seleccione la opción “upgrade” y detallar el plan “plus”
    And decide cancelar después de ver la etiqueta “sure to change plans?”
    Then el dueño del equipo seguirá en su plan actual y no habrá cambios en su cuenta.

  Scenario: error en la pasarela de pago (ruta triste)
    Given que el dueño de equipo desea cambiar de plan
    When vaya a la opción “my plan”
    And seleccione la opción “upgrade” y detallar el plan “plus”
    And intenta confirmar el cambio ingresAndo los datos en la pasarela de pago
    Then recibe un mensaje de error indicAndo que el proceso no pudo ser completado y se le pide que intente nuevamente más tarde.
