Feature: Descarga de diagnóstico en la aplicación web.
  Como dueño de equipo
  Quiero descargar el reporte técnico
  Para tener un informe del problema que tiene mi equipo.


  Scenario: descarga de diagnóstico existente con éxito (ruta feliz)
    Given que el dueño de equipo está autenticado en la aplicación
    And tiene un diagnóstico previamente proporcionado por un técnico
    When navega a la sección de "reports"
    And al hacer clic en "download report"
    Then el diagnóstico se descargará como un archivo en mi dispositivo.


  Scenario: descarga de diagnóstico inexistente (ruta alternativa)
    Given que el dueño de equipo está autenticado en la aplicación
    And no tiene ningún diagnóstico proporcionado por un técnico
    When navega a la sección de "reports"
    And al hacer clic en "download report"
    Then el usuario recibe un mensaje de "no reports".


  Scenario: falla en el proceso de descarga del diagnóstico (ruta triste)
    Given que el dueño del equipo está autenticado en la aplicación
    And tiene un diagnóstico previamente proporcionado por un técnico
    And se produce un error en el servidor o en la conexión
    When hace clic en "download report"
    Then el usuario recibe un mensaje de error y se le pide que intente nuevamente y/o revise su conexión a internet.
