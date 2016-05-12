
#require "Modules"
require_relative "Modules/Library"
require_relative "Modules/Greet"
require_relative "Modules/Despedida"
class Saludos
	include Greet
	include Despedida

end

=begin
# We are calling a method as a module
greet = Saludos.new
greet.greet1
greet.greet2
greet.greet3
greet.bye1
greet.bye2
greet.bye3
=end

# we are calling a class as a library
Greet.greet1
Greet.greet2
Greet.greet3
Despedida.bye1
Despedida.bye2
Despedida.bye3