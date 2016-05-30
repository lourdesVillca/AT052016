Feature: Create a new account in gmail
As a user
I want to have a new account 
So that allow me to send emails and interact with another users

Scenario: Validate create a new account in gmail
Given a user name Miriam
	And last name Huanca Quispe
	And the username is miriam.huanca
	And password is .5930886MH
	And the month of birthday December
	And the day of the Birthady is 24
	And The birthday year is 1993
	And the gender is Female
	And the mobile number is 79356938
	And her current email address is mirine02@hotmail.com
When I fill all data in the form
	And I select the Next step option
Then I should have created a new account for that user
  