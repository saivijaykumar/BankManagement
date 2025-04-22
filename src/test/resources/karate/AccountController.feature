Sure, here are the Karate test scripts for the above REST endpoints:

```java
Feature: Account Controller

Background:
    * url 'http://localhost:8080'

Scenario: Test Get All Accounts
    Given path '/accounts'
    When method get
    Then status 200
    And match response == []

Scenario: Test Add Account
    Given path '/accounts'
    And request { 'name': 'Test Account', 'balance': 1000 }
    When method post
    Then status 200
    And match response contains { 'name': 'Test Account', 'balance': 1000 }
```

Please note that you need to replace 'http://localhost:8080' with your actual server address and port. Also, the 'addAccount' test assumes that the 'Account' object has 'name' and 'balance' fields. You need to replace these with the actual fields of your 'Account' object.

These tests first set the base URL for the requests. Then they specify the path for the request, the HTTP method, and the expected status code. The 'addAccount' test also specifies the request body and checks that the response contains the expected data.