Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given following user exist
      | email        | password |
      | du@email.de  | password |
    And I am logged in as "du@email.de"
    And I visit the landing page
    When I click "New Article" link

  Scenario: Successfully create an article [Happy Path]
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Save Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "Content" with "Excited about learning a new framework"
    And I click "Save Article" button
    Then I should see "Title can't be blank"