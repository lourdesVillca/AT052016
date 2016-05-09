class User
	def data_user
		puts "Insert the user name"
		name= gets.chomp
		puts "Insert the user age"
		age= gets.chomp.to_i
		return age				
	end
end

class Age

	def calculate_age age_value
		ageMinutes= age_value*365*24*60
		puts "the age of the user in min is: #{ageMinutes}"
	end
end

a = User.new.data_user
Age.new.calculate_age(a)