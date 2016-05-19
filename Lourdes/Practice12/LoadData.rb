def create_file
	array_destination = ["La Paz","Cbba","Oruro","Santa Cruz","Beni","Tarija","Potosi","Pando","Chuquisaca"]
	file_example = File.open('Data.txt','w+')
	file_example.truncate(0)
	file_example.write("USER|PASSWORD|TRAVEL_DATE|DESTINATION\n")
	100.times do|index|
		file_example.write("user_#{index}|pass_#{index}|#{rand(1..30)}/#{rand(1..12)}/#{rand(2016..2030)}|#{array_destination[rand(0..8)]}\n")
	end
	file_example.close
#file_example = File.open('test.txt')
#print file_example.read
end
create_file