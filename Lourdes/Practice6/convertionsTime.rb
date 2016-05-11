def convertion(timeInSeconds)
	#convertion second in Minutes
	secondInMin = timeInSeconds/60.to_f
	
	#convertion second in Hours
	secondInHours = timeInSeconds/3600.to_f
	return secondInMin, secondInHours

end

puts "Ingrese el tiempo en Segundos"
timeInSeconds=gets.chomp.to_i

time_in_min, time_in_hours = convertion(timeInSeconds)
puts "convertion to Minutes is: #{time_in_min}"
puts "convertion to Hours is: #{time_in_hours}"