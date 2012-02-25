Feature: Retrieve Episodes With Specific Audio Language Encoding
  In order to retrieve of a list of episodes with a specific audio language encoding
  As a user
  I want to be able to retrieve the episode listing when passing in an audio language parameter

Background:
  Given I have the following Shows, Seasons, and episodes
  | show   | season   | episode   | language |
  | show 1 | season 1 | episode 1 | english  |
  | show 1 | season 1 | episode 2 | english  |
  | show 1 | season 2 | episode 1 | english  |
  | show 1 | season 2 | episode 2 | english  |
  | show 2 | season 1 | episode 1 | french   |
  | show 2 | season 1 | episode 2 | english  |
  | show 2 | season 2 | episode 1 | english  |
  | show 2 | season 2 | episode 2 | french   |
  | show 3 | season 1 | episode 1 | french   |
  | show 3 | season 1 | episode 2 | french   |
  | show 3 | season 2 | episode 1 | french   |
  | show 3 | season 2 | episode 2 | french   |

  Scenario: Get Listing of Shows 
  When I request the listing of shows
  Then I should only get all shows back

  Scenario: Get Listing of Shows with only English audio
  When I request the listing of shows that only have "english" language episodes
  Then I should only get "show 1" back
  

  Scenario: Get Listing of Shows with only French audio
  When I request the listing of shows that only have "french" language episodes
  Then I should only get "show 3" back
