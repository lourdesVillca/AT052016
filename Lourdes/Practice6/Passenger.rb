def print (name,price,destination="Cbba")
	price=price*6.96
	puts "Nombre: #{name}, Price: #{price}, Destination: #{destination}"
end

puts "Ingrese nombre de usuario"
nombre = gets.chomp

puts "Ingrese monto ticket"
priceBs= gets.chomp.to_f

puts "Ingrese el destino"
destination = gets.chomp.to_s



if destination != "" then  print nombre,priceBs,destination else  print nombre,priceBs end




