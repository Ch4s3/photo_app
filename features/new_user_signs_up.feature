Feature: new_user_signs_up
  In order to access the sites full features
  As a user
  I want to sign up for an account

  Scenario: home has a sign up link
   Given I visit the home page
   Then I should see "Sign up"

  Scenario: user signs up
    Given I visit the new user page
    And I fill in "user_user_name" with "Aquaman"
    And I fill in "user_email" with "aquaman@test.com"
    And I fill in "user_password" with "pass"
    And I fill in "user_password_confirmation" with "pass"
    When I click "Sign Up!"
    Then I should see "Photo App!"