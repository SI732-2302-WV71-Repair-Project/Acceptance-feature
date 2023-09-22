Feature: Selección tipo de equipo tecnológico.
  Como técnico
  quiero seleccionar el tipo de equipo que quiero registrar
  para brindar mis servicios técnicos.

  Background:
    Given que el técnico quiere seleccionar el tipo de equipo que puede reparar

  Scenario: el técnico de equipo selecciona un tipo de equipo que puede reparar en el sistema. (ruta feliz)
    Given que el técnico está en la página de registro de equipo.
    When el técnico selecciona una opción de tipo de equipo de una lista desplegable
    Then el sistema valida el tipo de equipo y lo registra en el sistema

  Scenario: técnico de equipo quiere seleccionar un tipo de equipo para registrar (ruta alternativa)
    Given que el técnico está en la página de registro de equipo.
    When el técnico se da cuenta de que el tipo de equipo que desea registrar no está en la lista desplegable.
    Then el técnico hace clic en un enlace o botón que dice “Otros”.
    And se le presenta un campo de texto donde puede ingresar manualmente el tipo de equipo.
    And el técnico ingresa el tipo de equipo deseado en el campo de texto.
    Then el sistema acepta la entrada personalizada y lo muestra como el tipo de equipo seleccionado para registrarlo.

  Scenario: técnico de equipo quiere seleccionar un tipo de equipo para registrar. (ruta triste)
    Given que el técnico está en la página de registro de equipo.
    When el técnico intenta seleccionar una opción de tipo de equipo de una lista desplegable.
    Then el sistema muestra un mensaje de error indicando que la selección no se ha realizado correctamente.
    And el técnico debe volver a intentar seleccionar un tipo de equipo válido antes de continuar.
