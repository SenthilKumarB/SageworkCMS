Given /^I am the registered user admin$/ do
	 params = {
    	:login => "admin",
    	:password =>"admin"
     }
     @user = User.new(params)
end

When /^I login with invalid credentials$/ do
  fill_in('user_session_login', :with => @user.login)
  fill_in('user_session_password', :with => @user.password)
  fill_in("user_captcha", :with => "8" )
  click_button("Login")
end

When /^I login with valid credentials$/ do
  fill_in('user_session_login', :with => @user.login)
  fill_in('user_session_password', :with => @user.password)
  find('#first_captcha').set "1"
  find('#second_captcha').set "7"
  fill_in("user_captcha", :with => "8" )
  click_button("Login")
end