Given /^I need to enter comments in article$/ do
  @article = Factory(:article)
  @comment = Factory(:comment)
end

When /^I enter with valid new comment data$/ do
  visit "/article/index?articles=#{@article.title}"
  @article.enable_comment.should == true
  fill_in "comments_name", :with => @comment.name
  fill_in "comments_url", :with => @comment.url
  fill_in "comments_comment", :with => @comment.comment
  click_button "Comment"
end