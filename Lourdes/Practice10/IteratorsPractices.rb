class IteratorsPractice

	def initialize amount
		@amount_person = amount
		@data = Hash.new
	end

	def obtain_data
		
		@amount_person.times do |index|
			puts "Insert the ID"
			id = gets.chomp
			puts "Insert the name"
			name = gets.chomp
			@data.store id,name
		end
	end
	def get_data
		return @data
	end

	def convert_uppercase
		array_data = Array.new

		@data.each_with_index do |(id, name), index|
			puts "Position: #{index} Name: #{name}"
			array_data.push(name)
		
		end

			return array_data.map {|value| value.upcase} 
 			
	end
	def print_greet
		@data.each {|id, name| puts "Name: #{name} Good bye!!"}
			
	end

end

puts "Ingrese la cantidad de personas"
cantidad = gets.chomp.to_i
person = IteratorsPractice.new(cantidad)
person.obtain_data
result_array=person.convert_uppercase
puts "My array: #{result_array}"
person.print_greet
