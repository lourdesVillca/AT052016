require 'singleton'
class SingletonPractice
	include Singleton
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

visitor = SingletonPractice.instance
visitor.modify_parameters
visitor2 = SingletonPractice.instance
p "Visitor from instance 1: #{visitor.user}"
p "Visitor from instance 2: #{visitor2.user}"
=begin
	
When we use singleton the 'visitor' value for both defined visitors is the same but when we only use a simple class the 'visitor' value changes
	
=end

