Feature: Departure Lounge

Scenario: number of flights are leaven today
Given The flight EZY4567 is leaving today
When I sell ticket 
Then I should register the user in the fligth 
