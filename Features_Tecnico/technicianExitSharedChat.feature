Feature: Salir del chat compartido.
  Como técnico
  quiero salir del chat abierto por la aplicación web
  para seleccionar otro chat con otra persona

  Scenario: el técnico del equipo quiere cerrar el chat abierto. (ruta feliz)
    Given el técnico se encuentre en un chat con un dueño de un equipo
    When presione el botón “exit”
    Then se presentará una vista con una etiqueta que dice “are you sure?”
    When el técnico de equipo presione el botón “yes”
    Then la vista se va a actualizar y volverá a la interfaz anterior.

  Scenario: el técnico del equipo quiere cancelar el cerrar el chat abierto. (ruta alternativa)
    Given el técnico se encuentre en un chat con un dueño de un equipo
    When presione el botón “exit”
    Then se presentará una vista con una etiqueta que dice “are you sure?”
    When el técnico de equipo presione el botón “cancel”
    Then la vista continuará en el chat abierto

  Scenario: el técnico del equipo no quiere cerrar el chat abierto, pero selecciona algún menú del sistema. (ruta triste)
    Given el técnico se encuentre en un chat con un dueño de un equipo
    When presione por descuido algún menú del sistema
    Then el sistema cerrará el chat y abrirá el menú seleccionado por error.
