Feature: Citizenship Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully
    And Navigate to Citizenship

  Scenario Outline: Create a Citizenship
    When Create a Citizenship name as "<name>" short name as "<shortname>"
    Then Success message should be displayed

    When Create a Citizenship name as "<name>" short name as "<shortname>"
    Then Already exist message should be displayed

    Examples:
      | name     | shortname |
      | rst23cs1 | sh56is1   |
      | rst23cs2 | sh56is2   |
      | rrrrsts3 | sh56is3   |
      | rst23cs4 | sh56is4   |
      | rst23cs5 | sh56is5   |