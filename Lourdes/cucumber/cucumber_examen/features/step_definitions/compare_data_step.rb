Given(/^I have a list of Items$/) do |table|
	@data = table.raw
end

When(/^I want to eat "(\w+)"$/) do |item|
 
	@data.each do |row|
		@result = Verify_items.verify_list row,item
					
	end
end

Then(/^I should display the message Exist "(\w+)"$/) do |expected_result|
	expect(@result).to eq(expected_result)
end

Then(/^I should display the message Not found "(\w+)"$/) do |expected_result|
	expect(@result).to_not eq(expected_result)
 	  	puts "The Item Does not exist"

end
