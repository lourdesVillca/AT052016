class Person
	#@greet
	attr_writer :name
	attr_reader :greet	
	attr_accessor :especial_message

	def initialize(value)
		@greet = value
	end


end

person = Person.new("Hi")
person.especial_message = "How are you"
especial_message = person.especial_message

puts "#{person.greet.to_s} #{person.name = "Lourdes"} #{especial_message}"


