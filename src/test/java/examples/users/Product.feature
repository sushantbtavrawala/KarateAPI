Feature: Check returned product Information GET request

  Background:
    * url 'http://localhost:3030'
    * header Accept = 'application/json'

  Scenario: 1. GET Request to list the information about product ID - No Parameterisation

    Given path '/products/9999729'
    When  method GET
    Then  status 200
    And match response contains {"name": "HP"}
    And match response contains {"price": 399}

  Scenario Outline: 2. GET Request to list the information about product ID - with Parameterisation

    Given path '/products/'+ <product_ID>
    When  method GET
    Then  status 200
    And match response contains {"name": <proudct_Name>}
    And match response contains {"price": <price>}

    Examples:
      | product_ID | proudct_Name |price|
      | 9999729    | HP           |399  |

  Scenario: 3. POST Request to Create new product ID

    Given path '/products/'
    And request {"name":"ACER","type":"Windows","upc":"String","description":"Work book","manufacturer":"ACER","model":"ACER","url":"String","image":"String","price":449,"shipping":25}
    When method POST
    Then status 201

