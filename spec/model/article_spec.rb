require 'spec_helper'

describe Article do
  before(:each) do
    @user=User.create(:login=>"admin",:email=>"senthil@sagework.com",:password=>"admin",:password_confirmation=>"admin")
    @category=Category.create(:name=>"sagework",:description=>"testing",:position=>1)
    @valid_attributes = {
            :user_id => @user.id,
            :title => "sample",
            :body_part => "sagework",
            :category_id => @category.id,
            :position=> 1,
            :show_home_page=> true,
            :enable_comment=> true
            }
    @article=Article.create(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    @article=Article.create(@valid_attributes)
  end
end