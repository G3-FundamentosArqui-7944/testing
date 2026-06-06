Feature: Registro de métricas físicas

  Como usuario
  Quiero registrar mis medidas corporales
  Para visualizar mi progreso físico

  Scenario: Registro exitoso
    Given que el usuario completa peso y medidas corporales
    When guarda el formulario
    Then el sistema almacena el registro
    And registra fecha y hora automáticamente
    And muestra mensaje de confirmación

  Scenario: Historial acumulativo
    Given que existen registros anteriores
    When el usuario añade nuevas métricas
    Then el sistema conserva el historial previo
    And agrega el nuevo registro
    And actualiza el gráfico de evolución

  Scenario: Error de persistencia
    Given que ocurre una falla de conexión
    When el usuario intenta guardar
    Then el sistema conserva los datos ingresados
    And muestra un mensaje de error