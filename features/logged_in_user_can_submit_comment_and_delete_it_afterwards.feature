@javascript

Feature: Logged in user can comment on an article and delete it afterwards
    As a commenter
    In order to ensure that my comments are relevant
    I should be able to change my mind and delete a submitted comment

    Background:
        Given the following articles exist in the database:
            | title           | content                          |
            | A breaking news | Some really breaking action      |
            | Learn Rails 5   | Build awesome rails applications |

        And the following users exist in the database:
            | email            |
            | laura@craft.com  |
            | amanda@craft.com |

        And I am logged in as "laura@craft.com" 
        And I visit the "landing" page

    Scenario: Visitor submits a comment and deletes it
        Given I am reading the article titled "A breaking news"
        And I fill in "Comment" with "This is awesome!"
        And I fill in "Your email" with "laura@gmail.com"
        And I click "Send comment"
        Then I should see "This is awesome!"
        And I should see a link "Delete comment"
        When I click on "Delete comment"
        And I focus on the comments
        Then I should not see "This is awesome!"
        But I should see "Your comment has been deleted"