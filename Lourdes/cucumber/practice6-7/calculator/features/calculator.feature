Feature: Calculation operation
As a User 
I want to make mathematical operations 
Then I will have fast request

Scenario: Sum
Given I have the numbers
|2|2|3|
When I select the option "Sum"
Then I should see the result = 7

Scenario: Susbstract
Given I have the numbers
|2|2|3|
When I select the option "Susbstract"
Then I should see the result = -3