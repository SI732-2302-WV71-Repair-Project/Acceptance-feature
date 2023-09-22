Feature: Visualización de planes en la aplicación web.
  Como técnico
  quiero saber que planes se ofrecen del servicio
  para saber cuál me conviene más

  Scenario: técnico de equipo quiere visualizar los planes que ofrece la aplicación web. (ruta feliz)
    Given el técnico de equipo se encuentra en la aplicación web.
    When seleccione el menú “my plan” en la barra de navegación.
    Then la vista le mostrará la sección donde se encuentra la información de todos los planes que se ofrecen del servicio.

  Scenario: el técnico de equipo quiere visualizar los planes que ofrece la aplicación web, pero en ese momento no hay planes disponibles en el sistema. (ruta alternativa)
    Given el técnico de equipo se encuentra en la aplicación web.
    When selecciona el menú "my plan" en la barra de navegación.
    And el sistema verifica que no hay planes actualmente disponibles
    Then la vista mostrará un mensaje que indica que en ese momento no hay planes disponibles para mostrar.

  Scenario: el técnico de equipo quiere visualizar los planes que ofrece la aplicación web, pero se produce un error al cargar la información de los planes. (ruta triste)
    Given el técnico de equipo se encuentra en la aplicación web.
    When selecciona el menú "my plan" en la barra de navegación.
    And el sistema intenta cargar la información de los planes, pero se produce un error técnico o de conexión.
    Then la vista mostrará un mensaje de error que indica que no se pueden cargar los planes en este momento debido a un problema técnico.
    And proporcionará al técnico opciones para intentar nuevamente o verificar su conexión a internet.
