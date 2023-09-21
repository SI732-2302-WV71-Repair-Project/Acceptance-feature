Feature: Pago por reparación de equipo en la aplicación web.
  Como dueño de equipo
  Quiero realizar el pago de la reparación del equipo
  Para asegurar que mi equipo sea reparado y vuelva a funcionar correctamente

  Scenario: dueño del equipo realiza el pago de la reparación con éxito (ruta feliz)
    Given que el dueño de equipo quiere realizar el pago de la reparación del equipo
    And se encuentra en la interfaz del chat
    When presiona el botón “pay repair”
    Then se visualizará una interfaz tipo formulario para ingresar los datos de la tarjeta
    And al validar los datos de la tarjeta mediante la api de stripe
    Then el sistema valida su pago de reparación de equipo y se le otorgará una confirmación.

  Scenario: dueño del equipo ingresa datos de tarjeta inválida (ruta alternativa)
    Given que el dueño de equipo quiere realizar el pago de la reparación del equipo
    And ingresa los datos de una tarjeta de crédito o débito inválida
    When se validan los datos de la tarjeta mediante la api de stripe
    Then la vista muestra un aviso informAndo que la tarjeta es inválida.

  Scenario: error durante el proceso de pago (ruta triste)
    Given que el dueño del equipo quiere realizar el pago de la reparación del equipo
    And se encuentra en la interfaz del chat
    And se produce un error en el servidor o en la conexión
    When presiona el botón "pay repair"
    Then el usuario recibe un mensaje de error y se le pide que intente nuevamente y/o revise su conexión a internet.

