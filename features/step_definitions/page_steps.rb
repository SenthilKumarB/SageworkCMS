Given /^I am having page params$/ do
  @params = {
    	:title => "Rails",
    	:menu_header => "Rails",
        :page_description => "Introduction to Rails",
        :position => 1,
     }
    @page = Page.new(@params)
end

When /^I enter with valid new datas for page$/ do
  fill_in("pages_title", :with => @page.title)
  fill_in("pages_menu_header", :with => @page.menu_header)
  fill_in("wysiwyg", :with => @page.page_description)
  fill_in("pages_position", :with => @page.position)
  click_button("Save")
end

When /^I enter with valid edit datas for page$/ do
  visit "page/edit/1"
  fill_in("pages_title", :with => @page.title)
  fill_in("pages_menu_header", :with => @page.menu_header)
  fill_in("wysiwyg", :with => @page.page_description)
  fill_in("pages_position", :with => @page.position)
  click_button("Update")
end