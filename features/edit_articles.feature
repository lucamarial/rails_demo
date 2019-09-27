Feature: Edit my articles

  As a publisher
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given the following article exists
      | title     | content                     |
      | Die Wiesn | Die Mass kostet nun 12 euro |
    And I visit the landing page

  Scenario: User can edit his articles
    When I click "Edit" button
    Then I should be on "Die Wiesn" page
    And I fill in "title" with "changes"
    And I fill in "content" with "das ist gut"
    And I should see "Article was successfully created"
    And I should see "changes"


