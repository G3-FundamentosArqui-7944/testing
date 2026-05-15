Feature: Cierre de sesión seguro
  Como usuario autenticado
  Quiero cerrar sesión correctamente
  Para invalidar mi sesión activa.

  Scenario: Revocación exitosa del token
    Given que el usuario posee un JWT válido
    When envía una solicitud POST al endpoint "/api/v1/authentication/sign-out"
    Then el sistema debe responder con código 200 OK
    And el token debe quedar invalidado para futuras solicitudes.

  Scenario: Uso de token revocado
    Given que el usuario cerró sesión previamente
    When intenta acceder nuevamente a un endpoint protegido
    Then el sistema debe responder con código 401 Unauthorized.