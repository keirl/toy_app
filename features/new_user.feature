Feature: Test new user feature of Toy App
  As product owner
  I need to ensure that new users can be added
  So that users can join.
 
  Scenario: New user wants to be added
    Given user is on the new user page
    When I add new user John
    And I add new email john@gmail.com
    Then user was successfully created
