module Convertions
	def minutes_to_hours minutes
		hours = minutes/60
		puts "#{minutes} min representa #{hours}"
	end

	def hours_to_days hours
		days = hours/24
		puts "#{hours} hrs representa #{days}"
	end

	def days_to_month days
		month = days/30
		puts "#{days} hrs representa #{month}"
	end
end


class Registration
	attr_accessor :user_name
	attr_accessor :user_id
	include Convertions

	def initialize
		@user_name = nil
		@user_id = nil
	end

	def insert_data cantidad
		@hash_data = Hash.new
		cantidad.times do |index|
			puts "Inserte el nombre del usuario"
			@user_name = verify_user_name(gets.chomp)
			puts "Inserte el Id del usuario"
			@user_id = verify_user_id(gets.chomp)
			@hash_data.store @user_id,@user_name
			puts "Que tipo de conversion desea?"
			options_to_convert_time
			tipo = gets.chomp
			selected_option(tipo)

		end
		


	end
	def verify_user_name name
		
		while name.length > 11
			puts "El nombre de usuario no debe contener mas de 11 caracteres"
			name = gets.chomp
		end
		return name
	end
	def verify_user_id id
		aux = true
		result = 0
		while aux
			if id =~ /^[a-z0-9]*$/
				result = id
				aux = false

			else
				puts "El Id ingresado no es valido, inserte nuevamente"
				id = gets.chomp
			end
		end

		return result
	end
	def amount_of_users
		puts "Inserte la cantidad de usuarios"
		cantidad = gets.chomp.to_i

		if (cantidad >= 3 && cantidad <= 15)
			insert_data(cantidad)
			
		else
			while !(cantidad > 3 && cantidad <15)
				puts "Inserte otra cantidad, este debe estar entre 3-15"
		 		cantidad = gets.chomp
			end
		end
	end
	def options_to_convert_time
		hash_options = {"a"=>"From minutes to hour","b"=>"From hours to day","c"=>"From days to month"}
		hash_options.each_with_index do |(option,value), index|
			puts "#{option}) #{value}"
		end
	end
	def selected_option tipo
		
		case tipo
 				when tipo == "a" then puts "Inserte el valor en minutos"; Convertions.minutes_to_hours(gets.chomp)    
 				when tipo == "b" then puts "Inserte el valor en horas" ; Convertions.hours_to_days(gets.chomp)
 				when tipo == "c"then puts "Inserte el Valor dias"; Convertions.days_to_month(gets.chomp)
 				
		end

	
	end
end

r = Registration.new
r.amount_of_users