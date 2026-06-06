Feature: Gestión clientes

  Como coach
  Quiero administrar mis clientes
  Para organizar mejor mis asesorías

  Scenario: Visualización de lista de clientes
    Given que el coach tiene clientes registrados
    When accede al módulo de gestión
    Then el sistema muestra la lista de clientes
    And presenta nombre, estado y próxima sesión

  Scenario: Consulta del perfil del cliente
    Given que el coach seleccionó un cliente
    When abre el perfil
    Then el sistema muestra métricas históricas
    And presenta progreso y sesiones recientes

  Scenario: Coach sin clientes asignados
    Given que el coach aún no tiene clientes
    When ingresa al dashboard
    Then el sistema muestra el mensaje "No tienes clientes registrados"
    And ofrece opciones para gestionar solicitudes