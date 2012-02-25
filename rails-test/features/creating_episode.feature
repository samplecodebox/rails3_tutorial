Feature: Creating different episodes for a season of a show
    In order to telecast episodes of a season
    As a show manager
    I want to create episode for a season

    Scenario: Creating episode for a season of show
        Given there is a show "Tom&Jerry"
        And that show has a season:
        |   number          |
        |   1               |
        And I am on the shows page
        When I follow "Tom&Jerry"
        And I follow "Season1"
        And I follow "New Episode"
        And I fill in "Number" with "1"
        And I fill in "Name" with "Episode1"
        And I fill in "Description" with "1st episode of Season1"
        And I select "English" from "Language"
        And I press "Create Episode"
        Then I should see "Episode has been successfully created."
        And I should see "Tom&Jerry-Season1-Episode1"


