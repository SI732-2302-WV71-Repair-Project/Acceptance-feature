Feature: Salir del chat compartido.
  Como dueño de equipo
  Quiero salir del chat aperturado por la aplicación web
  Para seleccionar otro técnico

  Scenario: dueño del equipo cierra el chat con éxito y es redirigido a la lista de técnicos (ruta feliz)
    Given que el dueño de equipo quiere salir de la interfaz de chat
    And se encuentra en la interfaz del chat
    When presiona el botón “exit”
    Then se presentará una vista con una etiqueta que dice "¿seguro que quieres salir?"
    And al presionar nuevamente el botón "exit"
    Then la vista se actualizará y redirigirá a la lista de técnicos.

  Scenario: dueño del equipo cancela la acción de cerrar el chat y continúa en el chat aperturado (ruta alternativa)
    Given que el dueño de equipo quiere salir de la interfaz de chat
    And se encuentra en la interfaz del chat
    When presiona el botón “exit”
    Then se presentará una vista con una etiqueta que dice "¿seguro que quieres salir?"
    And al presionar el botón "cancel"
    Then la vista continuará en el chat aperturado.

  Scenario: error al intentar salir del chat (ruta triste)
    Given que el dueño de equipo quiere salir de la interfaz de chat
    And se encuentra en la interfaz del chat
    And se produce un error en el servidor o en la conexión
    When intenta presionar el botón "exit"
    Then el usuario recibe un mensaje de error y se le pide que intente nuevamente y/o revise su conexión a internet.
