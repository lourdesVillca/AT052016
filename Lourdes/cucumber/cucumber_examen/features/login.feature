Feature: Login With users

@report1
Scenario Outline: Login to the app
Given I have a <User>
	And a <Password>
When I try to log in to the app
Then I should expect <Message>
Examples:
|User  |Password|Message|
|miriam|admin1 |Welcome|
|monica|admin2 |Hi|
|lynn  |admin3  |Hello|
