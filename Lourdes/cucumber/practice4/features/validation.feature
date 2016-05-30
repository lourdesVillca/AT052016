Feature: Validation examples

Scenario: validate sip code
Given I have a zip code 2566
	And The country is Bolivia
	And the user name is user1
When I click on save option
Then I should have saved the user