Feature: User Login

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters valid credentials
      | username | test.user@example.com |
      | password | CorrectPass123        |
    And the user clicks the "Login" button
    Then the user should be redirected to the dashboard
    And a welcome message "Welcome, Test User" should be displayed

  Scenario: Login fails with incorrect password
    Given the user is on the login page
    When the user enters an existing username and incorrect password
      | username | test.user@example.com |
      | password | WrongPass             |
    And the user clicks the "Login" button
    Then the user should see an error message "Invalid username or password"
