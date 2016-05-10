class Father
	@@amount_money = 45

	def self.amount_money
   		@@amount_money
   		
  	end

end


class Child1 < Father
	@@amount_money = 10
	puts "Child 1 money is: #{@@amount_money}"
end

class Child2 < Father
	@@amount_money = 5
	puts "Child 2 money is: #{@@amount_money}"

end

class Child3 < Father
	@@amount_money = 6
	puts "Child 3 money is: #{@@amount_money}"
end


puts "Father money is: #{Father.amount_money}"