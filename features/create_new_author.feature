Feature: Create new authors

  As a user
  In order to list more authors
  I would like to be able to add a new author

  Background:
    Given following user exist
      | email        | password |
      | du@email.de  | password |
    And I am logged in as "du@email.de"
    And following authors exist
      | name          | genre      |
      | Luca Lobacher | Shortstory |
      | Ellen Volz    | Roman      |

    Scenario: Create a new author
      When I visit the landing page
      Then I click "New Author" button
      And I fill in "Name" with "Jonas Masharqa"
      And I fill in "Genre" with "Shortstory"
      And I click "Save Author" button
      Then I should see "Jonas Masharqa"
  