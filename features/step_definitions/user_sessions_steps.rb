Given /^I am the registered user admin$/ do
@user = Factory(:user)
end

When /^I login with invalid recaptcha credentials$/ do
  fill_in('user_session_login', :with => @user.login)
  fill_in('user_session_password', :with => @user.password)
  fill_in("user_captcha", :with => "8" )
  click_button("Login")
end

When /^I login with invalid login credentials$/ do
  fill_in('user_session_login', :with => "sagework")
  fill_in('user_session_password', :with => @user.password)
  find('#first_captcha').set "1"
  find('#second_captcha').set "7"
  fill_in("user_captcha", :with => "8" )
  click_button("Login")
end

When /^I login with invalid password credentials$/ do
  fill_in('user_session_login', :with => @user.login)
  fill_in('user_session_password', :with => "sagework")
  find('#first_captcha').set "1"
  find('#second_captcha').set "7"
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

