Feature: Inicio de sesión en BodyMatch AI
  Como usuario registrado
  Quiero iniciar sesión en la aplicación
  Para acceder a funcionalidades protegidas.

  Scenario: Inicio de sesión exitoso
    Given que el usuario ya se encuentra registrado
    When envía sus credenciales válidas al endpoint "/api/v1/authentication/sign-in"
    Then el sistema debe responder con código 200 OK
    And debe devolver un accessToken JWT válido
    And debe devolver un refreshToken asociado a la sesión.

  Scenario: Inicio de sesión con credenciales inválidas
    Given que el usuario ingresa una contraseña incorrecta
    When intenta autenticarse en el sistema
    Then el sistema debe responder con código 401 Unauthorized
    And debe mostrar un mensaje de credenciales inválidas.