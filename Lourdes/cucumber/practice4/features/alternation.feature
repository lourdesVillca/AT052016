Feature: Alternation with two variables

Scenario: Example for Alternacion
Given I select "Sign in"
When I try to log in into my account
	And pres the log in button
Then I should see the home page

Given I select "Create and account"
When I Try to register a new user
Then I should see the for to register a new user


