Feature: Pruebas de la API de Demoblaze

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Registro exitoso de un nuevo usuario
    * def username = 'user_' + java.lang.System.currentTimeMillis()
    * def userCredentials = { username: '#(username)', password: 'password123' }

    Given path '/signup'
    And request userCredentials
    When method post
    Then status 200
    * def cleanResponse = response.trim()
    * match cleanResponse == '""'

  Scenario: Falla al registrar un usuario existente
    * def userCredentials = { username: 'testUser', password: 'testPass' }

    Given path '/signup'
    And request userCredentials
    When method post
    Then status 200
    And match response.errorMessage == 'This user already exist.'

  Scenario: Login exitoso con credenciales correctas
    * def userCredentials = { username: 'testUser', password: 'testPass' }

    Given path '/login'
    And request userCredentials
    When method post
    Then status 200
    * def checkResponse =
    * eval
"""
if (response.token != null) {
  karate.match(response.token, '#notnull');
} else {
  karate.match(response.errorMessage, '#notnull');
}
"""

  Scenario: Falla de login con contraseña incorrecta
    * def userCredentials = { username: 'testUser', password: 'wrong_password' }

    Given path '/login'
    And request userCredentials
    When method post
    Then status 200
    And match response.errorMessage == 'Wrong password.'