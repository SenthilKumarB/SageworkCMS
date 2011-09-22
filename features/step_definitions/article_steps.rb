Given /^I am having article params$/ do
  @params = {
    	:title => "Rails",
    	:body_part => "Introduction on Rails",
        :position => "1",
        :show_home_page => 1,
        :enable_comment => 1,
        :category_id => 1
     }
    @article = Article.new(@params)
end

When /^I enter with valid new datas$/ do
  fill_in("articles_title", :with => @article.title)
  fill_in("wysiwyg", :with => @article.body_part)
  select("uncategoried", :from => "articles_category_id")
  fill_in("articles_position", :with => @article.position)
  check("articles_show_home_page")
  check("articles_enable_comment")
  click_button("Save")
end

When /^I enter with valid edit datas$/ do
  visit "article/edit/1"
  fill_in("articles_title", :with => @article.title)
  fill_in("wysiwyg", :with => @article.body_part)
  select("uncategorized", :from => "articles_category_id")
  fill_in("articles_position", :with => @article.position)
  check("articles_show_home_page")
  check("articles_enable_comment")
  click_button("update")
end
