Feature: Creating different seasons of a show
    In order to telecast shows season wise
    As a show manager
    I want to create season for shows

    Scenario: Creating season for show
        Given there is a show "Tom&Jerry"
        And I am on the shows page
        When I follow "Tom&Jerry"
        And I follow "New Season"
        And I fill in "Number" with "1"
        And I press "Create Season"
        Then I should see "Season has been successfully created."
        And I should see "Tom&Jerry-Season1"
        

