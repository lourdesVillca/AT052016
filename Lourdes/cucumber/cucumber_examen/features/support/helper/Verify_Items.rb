module Verify_items
	def Verify_items.verify_list(item_list, items)
	
		item_list.each do |value|
		 	if(items == value)
		 		puts "items"
  				return items
  		 	else
  		 		return "No existe"
		 	end
		end
		
	end
end