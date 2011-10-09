Given /^I am having page params$/ do
  @page = Factory(:page)
end

Given /^I am following new page$/ do
end

When /^I should follow on Add New page$/ do
  click_link "page_new"
end

Given /^I should follow on View pages$/ do
  click_link "page_list"
end

When /^I should follow on view page$/ do
  click_link "page_list_#{@page.id}"
  has_content? @page.title
end

When /^I should follow on Page sort by all page$/ do
  click_link "All"
  has_content? @page.title
end

When /^I should follow on Page sort by year page$/ do
  click_link "Year"
  has_content? @page.title
end

When /^I should follow on Page sort by month page$/ do
  click_link "Month"
  has_content? @page.title
end

When /^I enter with valid new datas for page$/ do
  fill_in("pages_title", :with => @page.title)
  fill_in("pages_menu_header", :with => @page.menu_header)
  fill_in("html_editor", :with => @page.page_description)
  fill_in("pages_position", :with => @page.position)
  click_button("Save")
end

When /^I enter with valid edit datas for page$/ do
  visit "page/edit/#{@page.id}"
  fill_in("pages_title", :with => @page.title)
  fill_in("pages_menu_header", :with => @page.menu_header)
  fill_in("html_editor", :with => @page.page_description)
  fill_in("pages_position", :with => @page.position)
  click_button("Update")
end