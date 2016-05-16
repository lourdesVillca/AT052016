class ArrayTask
	def create_arrays
		puts "Insert the size of the array"
		size = gets.chomp.to_i
		number_array = Array.new
			alphabetical_array = Array.new
		mixed_arrays = Array.new

		size.times do |position|
			puts "Insert the value of the array"
			value_array = gets.chomp
				if value_array.to_i.to_s == value_array.to_s then number_array.push(value_array) else  alphabetical_array.push(value_array) end
			

		end
		mixed_arrays = number_array+alphabetical_array

		return number_array, alphabetical_array, mixed_arrays

	end
	def union_arrays first_array, second_array
		common_array = first_array & second_array
		puts "Common element in the array: #{common_array}"
		puts "First element of the array 1: #{first_array.first}"
		puts "First element of the array 2: #{second_array.first}"
		puts "Second element of the array 1: #{first_array.last}"
		puts "Second element of the array 2: #{second_array.last}"
			
	end
	def join_arrays array1, array2
		first_element = array1.shift
		last_element = array2.pop
		puts "Join arrays: #{array1.push(array2)}"
		new_array = Array.new
		
		return new_array.push(first_element,last_element) 

	end
	def print_array array_result
		p array_result
		
	end
end

array_task =ArrayTask.new
array1, array2, array3 = array_task.create_arrays
puts "Numeric array: #{array1}"
puts "Alphabetical array: #{array2}"
puts "Mixed array: #{array3}"

array1 = [1,3,6,5]
array2 = [2,8,5,4]


array_task.union_arrays(array1,array2)
array_result = array_task.join_arrays(array1,array2)
array_task.print_array(array_result)




