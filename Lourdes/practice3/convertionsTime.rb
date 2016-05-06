puts "Ingrese el timepo en Segundos"
timeInSeconds=gets.chomp.to_i

#convertion second in Hours
secondInHours = timeInSeconds/3600.to_f
puts "conversion in Hours is: #{secondInHours}"
#convertion second in days
secondInDays = timeInSeconds/3600/24.to_f
puts "convertion in Days is: #{secondInDays}"
