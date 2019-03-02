Feature: Publisher can edit articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background:
        Given the following articles exist
            | title                | content                          |
            | A breaking news item | Some really breaking action      |
        When I visit the "landing" page
        When I click "Edit"

    Scenario: Publisher can edit an article [Happy Path]
        When I fill in "Title" with "Learning Rails 5"
        And I fill in "Content" with "Excited about learning a new framework"
        And I click "Update Article"
        Then I should be on "Learning Rails 5" page
        And I should see "Article was successfully updated."
        And I should see "Learning Rails 5"
        And I should see "Excited about learning a new framework"
        
    Scenario: Publisher doesn't enter a title or text for the article [Sad Path]
        When I fill in "Title" with " "
        And I click "Update Article"
        Then I should see "Title and text can't be blank!"