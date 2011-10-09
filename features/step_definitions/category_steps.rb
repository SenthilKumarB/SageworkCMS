Given /^I am having category params$/ do
  @category = Factory(:category)
end

Given /^I am following new categories page$/ do
end

When /^I should follow on Add New Category page$/ do
  click_link "category_new"
end

Given /^I should follow on View Categories$/ do
  click_link "category_list"
end

When /^I should follow on view category page$/ do
  click_link "category_list_#{@category.id}"
  has_content? @category.name
end

When /^I should follow on Category sort by all page$/ do
  click_link "All"
  has_content? @category.name
end

When /^I should follow on Category sort by year page$/ do
  click_link "Year"
  has_content? @category.name
end

When /^I should follow on Category sort by month page$/ do
  click_link "Month"
  has_content? @category.name
end

When /^I enter with valid new datas for category$/ do
  fill_in("category_name", :with => @category.name)
  fill_in("html_editor", :with => @category.description)
  fill_in("category_position", :with => @category_position)
  click_button("save")
end

When /^I enter with valid edit datas for category$/ do
  visit "category/edit/#{@category.id}"
  fill_in("category_name", :with => @category.name)
  fill_in("category_description", :with => @category.description)
  fill_in("category_position", :with => @category_position)
  click_button("update")
end