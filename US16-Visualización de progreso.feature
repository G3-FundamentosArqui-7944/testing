Feature: Visualización de progreso

  Como usuario
  Quiero ver gráficos de evolución
  Para monitorear mis resultados

  Scenario: Mostrar gráficos con datos suficientes
    Given que el usuario tiene al menos dos registros
    When accede al módulo de progreso
    Then el sistema genera gráficos de evolución
    And muestra fechas y valores correspondientes
    And resalta tendencias positivas o negativas

  Scenario: Filtrado por período
    Given que el usuario está visualizando su progreso
    When selecciona un rango de fechas
    Then el sistema actualiza dinámicamente el gráfico
    And calcula el porcentaje de cambio

  Scenario: Datos insuficientes
    Given que el usuario tiene menos de dos registros
    When accede al panel
    Then el sistema informa que no hay suficientes datos
    And ofrece registrar nuevas métricas