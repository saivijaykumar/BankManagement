Here are the Karate test scripts for the REST endpoints defined in the given controller class:

```java
Feature: Customer Controller Feature

  Background:
    * url 'http://localhost:8080'

  Scenario: Test Get All Customers API
    Given path '/customers'
    When method get
    Then status 200
    And match response == []

  Scenario: Test Add Customer API
    Given path '/customers'
    And request { name: 'John Doe', email: 'johndoe@example.com' }
    When method post
    Then status 200
    And match response contains { name: 'John Doe', email: 'johndoe@example.com' }

  Scenario: Test Get All Customers API after adding a customer
    Given path '/customers'
    When method get
    Then status 200
    And match response contains { name: 'John Doe', email: 'johndoe@example.com' }
```

Please note that these scripts assume that the server is running on `localhost` and port `8080`. Also, these scripts are written assuming that the `Customer` model has `name` and `email` fields. If the `Customer` model has different fields, please replace `name` and `email` with the correct field names.