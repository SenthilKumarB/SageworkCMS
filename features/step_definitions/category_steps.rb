Given /^I am having category params$/ do
  @category = Factory(:category)
end

Given /^I am following new categories page$/ do
end

When /^I should follow on Add New Category page$/ do
  click_link "category_new"
end

When /^I enter with valid new datas for category$/ do
  fill_in("category_name", :with => @category.name)
  fill_in("category_description", :with => @category.description)
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