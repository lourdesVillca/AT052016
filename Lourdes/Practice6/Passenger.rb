def print (name,price,destination="Cbba")
	price=price*6.96
	puts "Nombre: #{name}, Price #{price}, Destination #{destination}"
end

puts "Ingrese nombre de usuario"
nombre = gets.chomp

puts "Ingrese monto ticket"
priceBs= gets.chomp.to_f

print nombre,priceBs
print nombre,priceBs,"La Paz"

