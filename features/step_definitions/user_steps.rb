Given /^I enter required values to create user$/ do
  	@params = {
    	:login => "admin",
    	:password => "admin",
    	:password_confirmation => "admin",
    	:email => "senthil1@sagework.com"
  } 
end

When /^I have no user$/ do
	User.delete_all
end

Then /^I need to create new admin user$/ do
	User.create!(@params)
	User.count.should == 1
end