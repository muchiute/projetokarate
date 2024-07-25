@procurar_usuario
Feature: Feature de exemplo - Procurar Usuario

  Background:
    * url urlEndpoint
    * def requestFile = read ('classpath:examples/users/data/' + envDataSource + '/request.json')
    * def bodyFile = read ('classpath:examples/users/data/' + envDataSource + '/body.json')
    * def responseFile = read ('classpath:examples/users/data/' + envDataSource + '/response.json')

  @cenario_01
  Scenario Outline: <cenario> - <ct> - <descricao> - <tipo_do_teste>
    * set responseFile.<cenario>.<ct>.data.id = <user_id>

    Given path 'api/users/'+<user_id>
    * retry until responseStatus == <status_code>
    When method get
    Then status <status_code>
    And match response == responseFile.<cenario>.<ct>

    @ct_01
    Examples:
      | cenario    | ct    | user_id | descricao             | tipo_do_teste  | status_code |
      | cenario_01 | ct_01 | 1       | Buscar usuário por id | Teste Positivo | 200         |