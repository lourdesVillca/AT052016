class ControlStatementPractice
	attr_accessor :name_user, :age_user
	
	def calculate_age_in_hours age
		
		case
			when age < 35 then puts "La edad del usuario en minutos es: #{age*365*24*60}" 
			else  return "Age cannot be calculated"
			
		end
	end

	def print_stages_of_age age
		
 		case age
 			when 0..5 then puts "you are a baby"
 			when 6..12 then puts "you are a child"
 			when 13..21 then puts "you are a young people"
 			when 22..35 then puts "you are adult"
	
 			else puts calculate_age_in_hours(age) 
 		end  
 	end 

end

puts "Ingresar nombre del usuario"
name = gets.chomp
puts "Ingresar la edad del usuario"
age = gets.chomp.to_i

user = ControlStatementPractice.new

user.name_user = name
user.age_user = age


user.calculate_age_in_hours(user.age_user)
user.print_stages_of_age(user.age_user)

