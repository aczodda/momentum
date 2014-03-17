Feature: Login to Momentum

  Scenario: Register on Momentum
    Given I go to the Momentum home page
    When I click on the sign up link
    When I type "mickey@disney.com" as my email address
    And I type "Mickey" as my first name
    And I type "Mouse" as my last name
    And I type "password" as my password
    And I type "password" as my password confirmation
    When I click the sign up button
    Then I am redirected to the home page

  Scenario: Login with user on Momentum
    Given I go to the Momentum home page
    When I login with "mickey@disney.com" as my email address
    And with "password" as my password
    Then I am redirected to the home page

