Given /^I am having article params$/ do
  @article = Factory(:article)
end

Given /^I am following new article page$/ do
end

When /^I should follow on Add New article page$/ do
  click_link "article_new"
end

When /^I enter with valid new datas$/ do
  fill_in("articles_title", :with => @article.title)
  fill_in("wysiwyg", :with => @article.body_part)
  select("uncategorized", :from => "articles_category_id")
  fill_in("articles_position", :with => @article.position)
  check("articles_show_home_page")
  check("articles_enable_comment")
  click_button("Save")
end

When /^I enter with valid edit datas$/ do
  visit "article/edit/#{@article.id}"
  fill_in("articles_title", :with => @article.title)
  fill_in("wysiwyg", :with => @article.body_part)
  select("uncategorized", :from => "articles_category_id")
  fill_in("articles_position", :with => @article.position)
  check("articles_show_home_page")
  check("articles_enable_comment")
  click_button("update")
end
