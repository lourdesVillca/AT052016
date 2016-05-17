def user_name
	puts "Insert the user name"
	name = gets.chomp
	case name
		when /^[a-z0-9_]*$/; puts "The user name is correct"
		else puts "Nombre incorrecto"
	end
end
def password_control
	puts "Insert the password"
	password = gets.chomp
	case password
		when /^[a-z0-9A-Z]{8,16}$/; puts "The password is correct"
		else puts "Password incorrecto"
	end
end
def mail_control
	puts "Insert the email"
	email = gets.chomp
	case email
		when /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i; puts "The mail is correct"
		else puts "Mail incorrect"
	end

end

user_name
password_control
mail_control

