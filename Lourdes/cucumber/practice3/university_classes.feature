Feature: University classes
As a student
I want to pass classes 
So that help me to learn and pass my classes 

Scenario: Reserve a chair for a full class
Given I have a calculo class 
  And there is a lot of students in my group
When I arrive early at class
Then I should have a chair to sit down

Scenario: Succesful English test
Given I have English test
	And I have Studied a lot last weekend
When I take the test
Then I should aprove the test

