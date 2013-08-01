Feature: user_logs_in
  In order to access the sites full features
  As a user
  I want to log in to my account

  Scenario: home has a log in link
   Given I visit the home page
   Then I should see "Come aboard"

  Scenario: user logs in
    Given I visit the log in page
    And I fill in "user_name" with "Aquaman"
    And I fill in "password" with "pass"
    When I click "Log in!"
    Then I should see "Welcome to photo app"