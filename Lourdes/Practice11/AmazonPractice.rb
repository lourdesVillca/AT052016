require 'singleton'
class AmazonPractice
	include Singleton
	attr_reader :sold_items
	attr_reader :item_quantity
	def initialize
		@amount_items_to_buy = 0
		@item_list = {"iphone"=>"100", "smartwatch"=>"50", "Ring"=>"10"}
		@item_quantity = {"iphone"=>"3", "smartwatch"=>"5", "Ring"=>"15"}
		@discount = 0

	end
	def buy_item
		@sold_items = Hash.new
		puts "Amazon - List of products"
		@item_list.each_with_index do |(product,price), index|
			puts "Product: #{product} - Price: #{price} Bs"
		end
		aux = true
		while aux
			puts "Insert the product name to select one"
			name = gets.chomp
		
			if(@item_list.has_key?(name))
				puts "Insert de quantity"
				quantity = gets.chomp.to_i
				#puts @item_list[name]
				if(quantity < @item_quantity[name].to_i)
					@item_quantity[name] = @item_quantity[name].to_i - quantity 
					puts "Sold item #{name}"
					total = calculate_price(name, quantity)
					@sold_items.store name, total
					puts "Do you want to buy another product? yes/no"
					yes_no_answer = gets.chomp
					if(yes_no_answer == "yes")
						aux = true
					else
						aux = false
					end
				else 
					puts "we only have #{@item_quantity[name].to_i} quantitys"
					aux = true

				end
			else
				puts "The product doesn't exist"
				aux = true
			end

		end
	end

	def calculate_price item, quantity
		total_amount = @item_list[item].to_i * quantity
		puts "Total amount #{total_amount}"
		return total_amount

	end
end

buyer1 = AmazonPractice.instance
buyer2 = AmazonPractice.instance
buyer1.buy_item
puts "Sold Items: #{buyer1.sold_items}"
puts "Balance: #{buyer1.item_quantity}"
buyer2.buy_item
puts "Sold Items: #{buyer2.sold_items}"
puts "Balance: #{buyer2.item_quantity}"

=begin
Yes is better to use singleton because we are working in one list of products and if we have two differents buyers 
and both buy some product then the quantity should be saved and not restarted in the default values
	
=end
