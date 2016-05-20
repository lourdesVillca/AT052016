require_relative "ConvertionTime"
require 'singleton'
class Registration
	include Singleton
	include ConvertionTime
	attr_accessor :user_name
	attr_accessor :user_id
	

	def initialize
		@user_name = nil
		@user_id = nil
		@file_log = File.open('execution.log','w+')
		@file_log.truncate(0)
				
	end

	def insert_data cantidad
		@hash_data = Hash.new
		cantidad.times do |index|
			puts "Inserte el nombre del usuario"
			@user_name = verify_user_name(gets.chomp)
			@file_log.write("#{@user_name}\n")
			puts "Inserte el Id del usuario"
			@user_id = gets.chomp
			@file_log.write("#{@user_id}\n")
			@hash_data.store @user_id,@user_name
			puts "Que tipo de conversion desea?"
			options_to_convert_time
			tipo = gets.chomp
			@file_log.write("#{tipo}\n")
			@file_log.write("#{selected_option(tipo)}\n")

		end
		@file_log.close	


	end

	def verify_user_name name
		aux = true
		result = 0
		while aux
			if name =~ /^[a-z0-9]{1,11}$/
				result = name
				aux = false

			else
				puts "El Nombre ingresado no es valido, inserte nuevamente"
				name = gets.chomp
				@file_log.write("#{name}")
			end
		end

		return result
	end
	def amount_of_users
		puts "Inserte la cantidad de usuarios"
		cantidad = gets.chomp.to_i
		@file_log.write("#{cantidad}\n")

		if (cantidad >= 3 && cantidad <= 15)
			insert_data(cantidad)
			
		else
			while !(cantidad >= 3 && cantidad <=15)
				puts "Inserte otra cantidad, este debe estar entre 3-15"
		 		cantidad = gets.chomp.to_i
		 		@file_log.write("#{cantidad}\n")
		 		if (cantidad >= 3 && cantidad <= 15)
					insert_data(cantidad)
				end

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
 				when "a" then puts "Inserte el valor en minutos"
 					ConvertionTime.minutes_to_hours gets.chomp.to_i  
 				when "b" then puts "Inserte el valor en horas"
 					ConvertionTime.hours_to_days gets.chomp.to_i
 				when "c" then puts "Inserte el Valor dias"
 					ConvertionTime.days_to_month gets.chomp.to_i
 				else puts "no compara"
 				
		end

	
	end

end
r = Registration.instance
r.amount_of_users
