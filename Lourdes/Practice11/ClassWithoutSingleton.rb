class ClassWithoutSingleton
	attr_accessor :message
	attr_accessor :user

	def initialize
		@user = "guest"
		@message = "Welcome to the city"
		@visitor = 0
	end

	def modify_parameters
		@data_users = Hash.new
		puts "Insert the amount of users"
		amount = gets.chomp.to_i
		amount.times do |index|
			puts "Insert a user"
			@user = gets.chomp
			puts "Insert a message"
			@message = gets.chomp
			@data_users.store @user,@message
			@visitor +=1
		end

	end
end

visitor = ClassWithoutSingleton.new
visitor.modify_parameters
visitor2 = ClassWithoutSingleton.new
p "First instance: #{visitor.user}"
p "Second instance: #{visitor2.user}"

#Cuando usamos singleton el valor de visitor para ambos visitors es el mismo
#pero cuando no usamos singleton el valor de visitor varia
