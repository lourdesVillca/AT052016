Feature: Compare data from a list

@report2
Scenario: Look for a specific item
Given I have a list of Items
|Manzana|Pera|Sandia|
When I want to eat "Manzana"
Then I should display the message Exist "Manzana"

@report1
Scenario: Look for a specific item does not exist
Given I have a list of Items
|Manzana|Pera|Sandia|
When I want to eat "Frutilla"
Then I should display the message Not found "Frutilla"