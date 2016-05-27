Feature: Test Google main page
As a user 
I want to get information searching in the google main page
So that help me to found fastly the information that I am Searching

Scenario: Load google page
Given I open a browser Firefox
When I Type "http://www.google.com"
Then The google main page should be loaded

Scenario: Succesful search
Given I put "Gherkins"  in the search box
When I press "Google Search" button
Then The result list should be displayed

Scenario: Display a match List when we are trying to make a search
Given google main page is open
When I type "Boli"
Then a match list should be displayed

Scenario: Searching without any word
Given The Google main page is open
When I click on Search button
Then No action should be done

Scenario: open doodle page
Given The Google main page is open
When I click on "I'm feeling lucky" button
Then the "https://www.google.com/doodles/" page should be open

Scenario: Succesful Search with Microphone
Given I have a microphone
	And I have opened the Google main page
When I click on microphone icon
	And I say "Bolivia"
Then The Result page with "Bolivia" coincidences should be displayed

Scenario: Unsuccesful search with microphone
Given I have a microphone
	And I have opened the Google main page
When I click on microprhone icon
	And I say "Bolivia"
	And I speak softly
Then An error message should be displayed

Scenario: Language offered by google main page
Given The Google main page is open
When I click the "Quechua" link
Then All options should be displayed in Quechua language


