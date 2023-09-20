Feature: Selección específica de equipo
    Como dueño de equipo
    Quiero seleccionar el modelo y la marca de mi equipo
    Para acceder a técnicos especializados

    Background:
        Given que el dueño de equipo quiere adquirir un servicio para su equipo

    Scenario: El dueño de equipo selecciona el modelo y la marca de su dispositivo (Ruta Feliz)
        When registra su equipo y selecciona la marca "Apple" y el modelo "iPhone 13"
        Then el sistema valida su selección
        And le brinda acceso a la aplicación web

    Scenario: El dueño de equipo deja campos de modelo y/o marca en blanco (Ruta Alternativa)
        When omite seleccionar el modelo y/o la marca
        Then el sistema resalta los campos faltantes
        And muestra un mensaje que indica que son necesarios para continuar

    Scenario: El dueño de equipo selecciona un modelo y marca incorrectos (Ruta Triste)
        When selecciona la marca "XYZ" y el modelo "ABC"
        Then el sistema muestra un aviso con la etiqueta: "Invalid Registration"
