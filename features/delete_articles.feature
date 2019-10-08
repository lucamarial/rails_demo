Feature: Delete my articles
  As a user
  In order to remove old articles
  I would like to be able to delete them

  Background: 
    Given following user exist
      | email        | password |
      | du@email.de  | password |
    And the following article exists
      | title     | content                     |
      | Die Wiesn | Die Mass kostet nun 12 euro |
    And I am logged in as "du@email.de"
    And I visit the landing page

  Scenario: Delete article
    When I click "Destroy" button
    Then I should not see "Die Wiesn"

