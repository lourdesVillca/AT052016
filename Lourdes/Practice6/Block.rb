def block
	result=0
	result = yield
	puts "The value obtained is #{result}"
end 

block {result = 15 *25}

puts block {result = 15 *25}

=begin
 we can pass parameters with the yield statement. The yield statement is written followed by parameters. You can even pass more than one parameter. 
 In the block, you place a variable between two vertical lines (||) to accept the parameters. 
 Here is an example:
=end
def test
   yield 5
   puts "You are in the method test"
   yield 100
end
test {|i| puts "You are in the block #{i}"}

