Given /^I am following new testimonial page$/ do
end

When /^I should follow on Add New testimonial page$/ do
  click_link "testimonial_new"  
end

Given /^I am having testimonial params$/ do
   @testimonial = Factory(:testimonial)
end

When /^I should follow on View testimonials$/ do
  click_link "testimonial_list"  
end

When /^I enter with valid new datas for testimonial$/ do
  fill_in('testimonial_name', :with => @testimonial.name)
  fill_in('testimonial_quotes', :with => @testimonial.quotes)
  fill_in('testimonial_company', :with => @testimonial.company)
  fill_in('testimonial_position', :with => @testimonial.position)
  click_button 'save'
end

When /^I enter with valid edit datas for testimonial$/ do
  visit "testimonial/edit/#{@testimonial.id}"
  fill_in('testimonial_name', :with => @testimonial.name)
  fill_in('testimonial_quotes', :with => @testimonial.quotes)
  fill_in('testimonial_company', :with => @testimonial.company)
  fill_in('testimonial_position', :with => @testimonial.position)
  click_button 'Update'
end