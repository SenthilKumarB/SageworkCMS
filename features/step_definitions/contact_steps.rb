Given /^I am contacting sagework$/ do
  @contact = {
          :name => "Senthil Kumar Bhaskaran",
          :email => "senthil@sagework.com",
          :website_url => "www.sagework.com",
          :message => "Contacting Sagework For Sample",
          }
end

When /^I enter with valid contacting details$/ do
  fill_in "contact_email_name", :with => @contact[:name]
  fill_in "contact_email_email", :with => @contact[:email]
  fill_in "contact_email_website_url", :with => @contact[:website_url]
  fill_in "wysiwyg", :with => @contact[:message]
  find('#first_captcha').set "1"
  find('#second_captcha').set "7"
  fill_in("user_captcha", :with => "8")
  click_button "Contact"
end