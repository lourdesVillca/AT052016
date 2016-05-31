Feature: Daily activities
Background: Pass class
Given I have passed a class X
When I come at the foundation
Then I should have a list of task for that class


Scenario: Researh information
Given I have to solve a problem
When I have a list of task
Then I should have the knowledge to resolve the problem


Scenario: Daily task for each class
Given I have the following list of task
|  Task 	| Status| 
| Prog101 	|  open |  
| BDT		|  open |  
| Foundation|  open |  
When I make BDT task
Then I should expect the Follogwing
| Prog101 	|  open 	|  
| BDT		|  Resolved |  
| Foundation|  open 	| 

 


