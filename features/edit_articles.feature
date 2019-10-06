Feature: Edit my articles

  As a publisher
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given following user exist
      | email        | password |
      | du@email.de  | password |
    And the following article exists
      | title     | content                     |
      | Die Wiesn | Die Mass kostet nun 12 euro |
    And I am logged in as "du@email.de"
    And I visit the landing page

  Scenario: User can edit his articles
    When I click "Edit" button
    Then I fill in "Title" with "changes"
    And I fill in "Content" with "das ist gut"
    And I click "Update Article" button
    Then I should be on "changes" page
    And I should see "changes"



