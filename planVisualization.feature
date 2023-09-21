Feature: Visualización de planes en la aplicación web.
  Como dueño de equipo
  Quiero saber que planes se ofrecen del servicio
  Para saber cuál me conviene más

  Scenario: dueño de equipo visualiza todos los planes (ruta feliz)
    Given que el dueño de equipo se encuentra en la plataforma web
    When seleccione el enlace “planes” en la barra de navegación de la parte superior
    Then la vista le mostrará la sección donde se encuentra la información de todos los planes que se ofrecen del servicio.

  Scenario: dueño de equipo decide registrarse después de leer sobre un plan (ruta alternativa)
    Given que el dueño de equipo ha leído información sobre un plan
    And desea registrarse para ser cliente del servicio
    When seleccione el botón “registrarse” ubicado debajo de la información del plan
    Then la vista lo enviará al sitio web del servicio para que pueda completar su registro.

  Scenario: la página de planes no se carga (ruta triste)
    Given que el dueño de equipo quiere ver los planes disponibles
    And selecciona el enlace “planes” en la barra de navegación de la parte superior
    When se produce un error en la carga de la página
    Then el usuario recibe un mensaje de error indicAndo que la página no se pudo cargar y se le pide que intente nuevamente más tarde.

