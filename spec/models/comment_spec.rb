require 'spec_helper'

describe Comment do
  before(:each) do
    
    @user = User.create(:login=>"admin",:email=>"senthil@sagework.com",:password=>"admin",:password_confirmation=>"admin")
    @category = Category.create(:name=>"sagework",:description=>"testing",:position=>1)
    @article = Article.create(:user_id => @user.id, :title => "sample",:body_part => "sagework",:category_id => @category.id,
                                :position=> 1,:show_home_page=> true,:enable_comment=> true)
    @valid_attributes = {
              :article_id => @article.id,
              :name => "sagework",
              :url => "sagework@gmail.com",
              :comment => "testing"
              }
    @comment=Comment.create(@valid_attributes)
  end
  it "should create a new instance given valid attributes" do
    @comment=Comment.create(@valid_attributes)
  end
end