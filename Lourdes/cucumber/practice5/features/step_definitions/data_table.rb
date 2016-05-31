Given(/^a board like this:$/) do |table|
  @board = table.raw
end

When(/^player (^[a-z]{1}$) plays in row (\d+), column (\d+)$/) do |player, row, col|
  puts @board
  row, col = row.to_i, col.to_i
  @board[row][col] = 'x'


  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |table|
  table.diff!(@board)
end