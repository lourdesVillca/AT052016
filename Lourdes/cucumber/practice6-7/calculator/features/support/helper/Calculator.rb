module Calculator
	def Calculator.add(list_of_numbers)
	result=0

	list_of_numbers.each do |value|
		
  		result = result + value.to_i
	end
	return  result
 #add code to sum each number in the list
	end
	def Calculator.substract(list_of_numbers)
   		result =list_of_numbers.shift.to_i

   		list_of_numbers.each do |value|
   			result = result - value.to_i
   		end
   		return result
	end
end
