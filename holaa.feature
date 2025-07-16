Feature: US01 - Precisión al encontrar picos de consumo
  Como usuario, quiero que la aplicación identifique y muestre los picos de consumo eléctrico en tiempo real,
  Para poder tomar decisiones informadas sobre mi consumo energético.

  Scenario: Detección y visualización de picos de consumo en tiempo real
    Given que el <usuario> ha iniciado sesión en la aplicación
    And el sistema está conectado al medidor inteligente
    When el consumo eléctrico supera el umbral definido
    Then la aplicación debe resaltar el pico en el gráfico de consumo
    And mostrar un mensaje indicando "Pico de consumo detectado"

    Examples:
      | usuario | consumo detectado | umbral | mensaje                  |
      | Lucía   | 9.8 kWh/min      | 7.5    | Pico de consumo detectado|
      | Diego   | 10.2 kWh/min     | 7.0    | Pico de consumo detectado|