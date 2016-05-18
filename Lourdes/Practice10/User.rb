class User
	attr_accessor :hash_data

	def initialize
		@hash_data = Hash.new
	end
	def create_hash
		puts "Ingrese el tamaño del hash"
		size = gets.chomp.to_i
		size.times do |index|
			puts "Ingrese el Id del usuario"
			user_id = verify_id(gets.chomp.to_i)
			display_message(user_id)
			puts "Ingrese el no nombre de usuario"
			name_user = verify_name(gets.chomp)
			@hash_data.store user_id,name_user
		end
			
		
	end
	def verify_id id
		
		if(id>100)
				
			while id > 100
				puts "The typed ID should be between 1 to 100, please insert another ID"
				id = gets.chomp.to_i
			end
		end
		
		return id
	end
	def verify_name name
		aux = false
		if name =~ /^[a-z]{1,8}$/
			aux = true
		end

		while !aux
			puts "The typed Name doesn't meet with the format , please insert another user name"
			name = gets.chomp

			if name =~ /^[a-z]{1,8}$/
				aux = true
			end
		end


		return name
	end
	def users_id
		puts "Insert a number"
		number = verify_number(gets.chomp.to_i)
		
		array_with_ids = Array.new

		@hash_data.each do |id,name|
						
			if(id.to_s.chr == number.to_s)
				
				array_with_ids.push(id)
			end
		end
		return array_with_ids
	end
	def users_name
		puts "Insert a character"
		character  = verify_character(gets.chomp)
		
		array_with_names = Array.new

		@hash_data.each do |id,name|
				
			if(name.chr == character)
				
				array_with_names.push(name)
			end
		end
		return array_with_names
	end

	def verify_number number
		if(number>10)
				
			while number > 10
				puts "The typed number should be between 1 to 9, please insert another Number"
				number = gets.chomp.to_i
			end
		end
		
		return number
	end
	def verify_character name
		if(name.length > 1)

			while name.length > 1
				puts "Insert only a character"
				name = gets.chomp
			end
		end
		return name
	end

	def display_message id
		
			case id
				when 1..25 then puts "User belong Group 1" 
				when 26..50 then puts "User belong Group 3"
				when 51..75 then puts "User belong Group 4"
				when 76..100 then puts "User belong Group 5"
			end
				
		
		
	end
	def print_array array
		puts "#{array}"
	end

end

user = User.new
user.create_hash
puts user.hash_data
array_id = user.users_id
user.print_array array_id
array_name = user.users_name
user.print_array(array_name)



