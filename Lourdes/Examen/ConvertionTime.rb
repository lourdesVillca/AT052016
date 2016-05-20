module ConvertionTime
	def ConvertionTime.minutes_to_hours minutes
		hours = minutes/60
		puts "#{minutes} min representa #{hours} Hrs."
	end

	def ConvertionTime.hours_to_days hours
		days = hours/24
		puts "#{hours} hrs representa #{days} days"
	end

	def ConvertionTime.days_to_month days
		month = days/30
		puts "#{days} hrs representa #{month} month"
	end
end