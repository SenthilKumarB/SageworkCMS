Given /^I am having category params$/ do
  @params = {
    	:name => "Rails",
        :description => "Introduction to Rails",
        :position => 1,
     }
    @category = Category.new(@params)
end

When /^I enter with valid new datas for category$/ do
  fill_in("category_name", :with => @category.name)
  fill_in("category_description", :with => @category.description)
  fill_in("category_position", :with => @category_position)
  click_button("save")
end

When /^I enter with valid edit datas for category$/ do
  visit "category/edit/1"
  fill_in("category_name", :with => @category.name)
  fill_in("category_description", :with => @category.description)
  fill_in("category_position", :with => @category_position)
  click_button("update")
end