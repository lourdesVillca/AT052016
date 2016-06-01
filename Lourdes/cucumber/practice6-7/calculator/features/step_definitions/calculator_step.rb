	Given(/^I have the numbers$/) do |table|
  		@data = table.raw
	end

	When(/^I select the option "(\w+)"$/) do |operation|
		@result=0
		@data.each do |row|
			case operation
				when "Sum" then @result = Calculator.add row
				when "Susbstract" then @result = Calculator.substract row
			end
		end
		
	end


	Then(/^I should see the result = (-?\d+)$/) do |expected_result|
  		expect(@result).to eq(expected_result.to_i)
	end

