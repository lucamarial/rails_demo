Feature: User log in
  As a User
  In order to access the articles
  I would like to be able to log in

  Background:
    Given following user exist
      | email        | password |
      | du@email.de  | password |
    And I am on the "sign in" page

  Scenario: Log in [Happy Path]
    When I fill in "Email" with "du@email.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I visit the landing page