class Customer

	def customer_id(name, customer_id)
		message = ""
		result = customer_id > 100? "Thanks to be our customer" : "Thanks"
		name = name.upcase
		puts "Hi #{name}"
		puts "You are our customer #{customer_id} #{result}"

	end

end

customer = Customer.new.customer_id("lourdes",105)
customer2 = Customer.new.customer_id "Miriam",50

