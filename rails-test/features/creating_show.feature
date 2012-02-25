Feature: Creating Shows
    In order to telecast a show on television
    As a user
    I want to create the show

    Scenario: Creating show
        Given I am on the shows page
        When I follow "New Show"
        And I fill in "Name" with "Tom&Jerry"
        And I fill in "Description" with "Tom & Jerry Cartoon show"
        And I press "Create Show"
        Then I should see "Show was successfully created."
        And I should be on the show page for "Tom&Jerry"

