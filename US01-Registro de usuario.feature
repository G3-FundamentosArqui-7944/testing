Feature: Registro de usuarios en BodyMatch AI
  Como nuevo usuario
  Quiero registrarme en la plataforma
  Para acceder a las funcionalidades del sistema.

  Scenario: Registro exitoso de atleta
    Given que el usuario se encuentra en la pantalla de registro
    When envía una solicitud POST al endpoint "/api/v1/authentication/sign-up/athlete"
    And completa correctamente el formulario con email y contraseña válidos
    Then el sistema debe responder con código 201 Created
    And el usuario atleta debe almacenarse correctamente en la base de datos.

  Scenario: Registro exitoso de coach
    Given que el usuario selecciona el rol Coach
    When envía una solicitud POST al endpoint "/api/v1/authentication/sign-up/coach"
    Then el sistema debe registrar correctamente al coach
    And debe devolver la información básica del usuario creado.