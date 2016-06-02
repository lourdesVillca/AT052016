Given(/^I have a (\w+)$/) do |user|
  @user_name = user.to_s
end

Given(/^a (\w+)$/) do |password|
  @password = password.to_s

end
When(/^I try to log in to the app$/) do
 
   $user_list.each_with_index do |(user, pass), index|
  	 	
  	if @user_name == user.to_s &&  @password == pass.to_s then
  		@message = $user_message[user]
  		
  	end	
  
  end
end

Then(/^I should expect (\w+)$/) do |message|
	expect(@message.to_s).to eq(message.to_s)
end