class PracticeArray
	def fill_array
		puts "Ingrese numero de elementos:"
		number = gets.chomp.to_i
		arreglo = Array.new
		number.times do |i| 
			puts "Ingrese el valor del elemento #{i}"
		    arreglo.push(gets.chomp)
		end
			
		return arreglo
	end
	def show_array values_array
		puts "Values of the array: #{values_array.inspect}"

	end
end

my_array = PracticeArray.new
values_array = my_array.fill_array
my_array.show_array(values_array)