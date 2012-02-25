Feature: Deleting shows
    In order to remove shows
    As a show manager
    I want to remove them forever

    Scenario: Deleting a project
        Given there is a show "Tom&Jerry"
        And I am on the shows page
        When I follow "Destroy"
        Then I should not see "Tom&Jerry"
