Given /^I am following new white paper page$/ do  
end

When /^I should follow on Add New white paper page$/ do
  click_link "white_paper_new"  
end

When /^I should follow on View white paper$/ do
  click_link "white_page_list"
end


Given /^I am having White Paper params$/ do
      @white_paper = {
              :name => "Sagework",
              :filename => "#{Rails.root}/features/Sagework.pdf"
              }
end

When /^I enter with valid new datas for white paper$/ do
  fill_in('white_paper_name', :with => @white_paper[:name])
  attach_file('fileupload', @white_paper[:filename])
  click_button 'save'
end
