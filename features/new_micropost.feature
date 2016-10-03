Feature: Test new user feature of Toy App
  As product owner
  I need to ensure that new posts can be added
  So that users can post their brilliance.
 
  Scenario: User wants to add post
    Given user is on the new micropost page
    When I add new content Brilliance
    And I select user id 1
    And I click on Create Micropost
    Then micropost was successfully created
