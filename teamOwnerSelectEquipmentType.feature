Feature: Selección tipo de equipo tecnológico
    Como dueño de equipo
    Quiero seleccionar el tipo de equipo que quiero registrar
    Para acceder a técnicos especializados

    Background:
        Given que el dueño de equipo quiere adquirir un servicio para su equipo

    Scenario: Dueño de equipo selecciona un celular (Ruta Feliz)
        When selecciona el icono de celular
        Then el sistema valida la selección
        And registra el tipo de equipo como "celular"

    Scenario: Dueño de equipo intenta seleccionar más de un tipo de equipo a la vez (Ruta Alternativa)
        When intenta seleccionar múltiples tipos de equipos a la vez
        Then el sistema muestra un mensaje que indica que sólo puede seleccionar un tipo de equipo a la vez

    Scenario: Dueño de equipo no realiza ninguna selección (Ruta Triste)
        When intenta continuar sin seleccionar ningún tipo de equipo
        Then el sistema muestra un mensaje indicando que debe seleccionar un tipo de equipo para continuar
