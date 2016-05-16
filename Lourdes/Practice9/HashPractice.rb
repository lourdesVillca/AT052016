class HashPractice
	attr_reader :hash

	def initialize
		@hash = Hash.new
	end
	def create_hash
		puts "Inserte el tamanio del hash"
		size = gets.chomp.to_i
		size.times do|index|
			puts "Insert the key"
			key = gets.chomp
			if (exist_key?(key))
				puts "the inserted key exist on the hash, please insert another Key"
				key = gets.chomp
			end
			puts "Insert the value"
			value = gets.chomp
			if (exist_value?(value))
				puts "the inserted value exist on the hash, please insert another value"
				value = gets.chomp
			end
				
			@hash.store key,value
			
		end
	
	end
	def print_hash_key created_hash
		p created_hash.keys
	end
	def print_hash_values created_hash
		p created_hash.values
	end
	def print_hash created_hash
		p created_hash
	end
	def exist_key? value
		@hash.has_key?(value)
	end
	def exist_value? value
		@hash.has_value?(value)
	end

end

h = HashPractice.new
h.create_hash
my_hash = h.hash
#p h.hash

h.print_hash_key(my_hash)
h.print_hash_values(my_hash)
h.print_hash(my_hash)