Feature: List authors on landing page
  As a user
  When I visit the landing page
  I would like to see a list of authors

  Background: 
    Given following user exist
      | email        | password |
      | du@email.de  | password |
    And I am logged in as "du@email.de"
    And following authors exist
      | name          | genre      |
      | Luca Lobacher | Shortstory |
      | Ellen Volz    | Roman      |

  Scenario: A list of authors
    When I visit the landing page
    Then I should see "Luca Lobacher"
    And I should see "Shortstory"
    And I should see "Ellen Volz"
    And I should see "Roman"