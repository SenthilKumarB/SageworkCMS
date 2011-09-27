Given /^I am having site administration setting params$/ do
  @setting = {
          :website_title => "SampleCMS",
          :website_description => "Sample Content Management System",
          :website_email => "senthil@sagework.com",
          :contact_subject => "Sample Contact Form",
          :website_version => "1.0.0"
          }
end

When /^I follow on setting page$/ do
     click_link "Settings"
end

When /^I enter with valid settings datas$/ do
  click_link "setting"
  fill_in "website_title", :with => @setting[:website_title]
  fill_in "website_description", :with => @setting[:website_description]
  fill_in "website_version", :with => @setting[:website_version]
  click_link "contact_info"
  fill_in "website_email", :with => @setting[:website_email]
  fill_in "contact_subject", :with => @setting[:contact_subject]
  click_button "save"
end

Given /^I am having site administration file upload params$/ do
  @files = {
          :directoryinfo => "images",
          :fileupload => "#{Rails.root}/features/rails.png"
          }
end

When /^I follow on files page$/ do
     click_link "Files"
end

When /^I enter with valid files datas$/ do
  select(@files[:directoryinfo], :from => "directoryinfo")
  attach_file('fileupload', @files[:fileupload])
  click_button "upload"
end

Given /^I am having site administration file list params$/ do
    @fileslist = {
          :view_directory_info => "..",
          }
end

When /^I enter with valid files list datas$/ do
  select(@fileslist[:view_directory_info], :from => "view_directory_info")
  click_button "View"
end

Given /^I am logout user page$/ do
end

When /^I follow on logout link$/ do
  click_link "logout"
end