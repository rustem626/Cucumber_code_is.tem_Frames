Feature: Country Multi Scenario

  Background:  # before senaryo
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully
    And Navigate to country

  Scenario: Create country
    When Create a country
    Then Success message should be displayed

  Scenario: Create country 2
    When Create a country name as "Rustam" code as "1980"
    Then Success message should be displayed

