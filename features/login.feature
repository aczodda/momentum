Feature: Login to Momentum

  Scenario: Register on Momentum
    Given I go to the Momentum home page
    When I click on the sign up link
    When I type "dsilva@ipcoop.com" as my email address
    When I type "password" as my password
    When I type "password" as my password confirmation
    When I click the sign up button
    Then I am redirected to the home page

  Scenario: Login with user on Momentum
    Given I have an account on Momentum
    When I login with my credentials
    Then I should be logged into the system

