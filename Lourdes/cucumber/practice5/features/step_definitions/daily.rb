Given(/^I have passed a class X$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I come at the foundation$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should have a list of task for that class$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have to solve a problem$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I have a list of task$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should have the knowledge to resolve the problem$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have the following list of task$/) do |table|
  @board = table.raw
end

When(/^I make (\w+) task$/) do |row|
  puts @board
  row = row.to_i
  @board[row] = 'resolved'
end

Then(/^I should expect the Follogwing$/) do |table|
 table.diff!(@board)
end