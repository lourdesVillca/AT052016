class TemperatureConverter
	def celsius_fahrenheit celcius
		fahrenheit = (((9* celcius ) /5) + 32).to_f

	end
	def fahrenheit_celsius fahrenheit
		celsius = ((5*(fahrenheit - 32))/9).to_f
	end

end

puts "Ingrese los grados celcius"
celsius=TemperatureConverter.new.celsius_fahrenheit(gets.chomp.to_i)
puts "la conversion a grados fahrenheit es: #{celsius}"
puts "Ingrese los grados fahrenheit"
fahrenheit=TemperatureConverter.new.fahrenheit_celsius(gets.chomp.to_i)
puts "la conversion a grados celsius es: #{fahrenheit}"