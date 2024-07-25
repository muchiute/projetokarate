@cadastrar_usuario
Feature: Feature de exemplo - Cadastrar Usuario

  Background:
    * url urlEndpoint
    * def requestFile = read ('classpath:examples/users/data/' + envDataSource + '/request.json')
    * def bodyFile = read ('classpath:examples/users/data/' + envDataSource + '/body.json')
    * def responseFile = read ('classpath:examples/users/data/' + envDataSource + '/response.json')

  @cenario_02
  Scenario Outline: <cenario> - <ct> - <descricao> - <tipo_do_teste>
    * set requestFile.body.email = bodyFile.<user>.email
    * set requestFile.body.password = bodyFile.<user>.password
    Given path 'api/register'
    * configure headers = requestFile.header
    And request requestFile.body
    * retry until responseStatus == <status_code>
    When method post
    Then status <status_code>
    And match response == responseFile.<cenario>.<ct>

    @ct_01
    Examples:
      | cenario    | ct    | user    | descricao     | tipo_do_teste  | status_code |
      | cenario_02 | ct_01 | user_01 | Criar usuário | Teste Positivo | 200         |

    @ct_02
    Examples:
      | cenario    | ct    | user    | descricao               | tipo_do_teste  | status_code |
      | cenario_02 | ct_02 | user_02 | Criar usuário sem senha | Teste Negativo | 400         |