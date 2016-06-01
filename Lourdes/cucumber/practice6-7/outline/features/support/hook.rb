Before do |scenario|
  puts "Let’s Go scenario: #{scenario.name}"
end

After do |scenario|
   if scenario.failed?
    puts  "Failed #{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end
Before('@regression', '@sanity') do
	puts "Example of tags"
end
