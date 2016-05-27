Feature: Daily Activities

#Take a Shower in a Very hot day
Scenario: Take a shower
Given it is a hot day 
	And the air conditioner is turn off 
When I take a shower 
Then I should be fresh and clean

Scenario: Cook to my Pets
Given I don't have process food
	But I have Rice
	And I have Chicken's liver 
When I put the pot on the  stove
	And I mix the ingredients 
Then I should have a delicious food to my pets
