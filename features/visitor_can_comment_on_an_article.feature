Feature: Visitor can comment on published articles
    As a visitor,
    In order to express my opinion
    I would like to be able to post comments about an article

    Background:
        Given the following articles exists
            | title                | content                          |
            | A breaking news      | Some really breaking action      |
            | Learn Rails 5        | Build awesome rails applications |
        When I visit the "landing" page
        
    Scenario: Visitor submits a comment
        Given I am reading the article titled "A breaking news"
        And I fill in "Comment" with "This is awesome!"
        And I fill in "Your email" with "laura@gmail.com"
        And I click "Send comment"
        Then I should see "This is awesome!"
        And I should see "laura@gmail.com commented on 2019-02-26"
        But when I am looking at the article titled "Learn Rails 5"
        Then I should not see "This is awesome!"