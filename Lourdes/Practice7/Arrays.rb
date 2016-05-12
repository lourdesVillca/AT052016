def return_array
	nums = ["Value", 8.69, "something"]
end
def print_first_element(array)
	puts "First Element #{array.first}"
end
def print_last_element(array)
	puts "Last Element: #{array.last}"
end
def array_union(array1,array2)
	puts "Union de 2 arreglos: #{(array1&array2)}"
end

puts return_array
array1 = ["Value1","Value2","value3"]
array2 = ["Value2","Value5","value4"]

print_first_element(array1)
print_last_element(array1)
array_union(array1,array2)
