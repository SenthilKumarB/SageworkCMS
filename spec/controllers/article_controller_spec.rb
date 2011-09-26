require 'spec_helper'

describe ArticleController do

  fixtures :users
  fixtures :articles
  fixtures :categories
  before(:each) do
    @valid_attributes = {
            :user_id => users(:one).id,
            :title => "sample",
            :body_part => "sagework",
            :category_id => categories(:one).id,
            :position=> 1,
            :show_home_page=> 1,
            :enable_comment=> 1
    }

  end

  it "should create new article" do
     session[:user_id] = users(:one).id
    get 'new'
  end

  it "should create a new instance given valid attributes" do
     post :save, :article => @valid_attributes
    flash[:success].should == "Successfully Saved"
  end
    
end
    