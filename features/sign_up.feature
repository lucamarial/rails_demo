Feature: User sign up
  As a User
  In order to access the articles
  I would like to create an account.

  Background:
  Given I am on the "sign in" page

  Scenario: Sign up [Happy Path]
    When I click "Sign up" button
    Then I should be on the "sign up" page
    And I fill in "Email" with "ich@email.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up" button
    Then I visit the landing page
  