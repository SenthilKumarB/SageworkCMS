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

    controller.stub!(:require_user).and_return(users)
  end

  it "should create new article" do
    get 'new'
  end

  it "should create a new instance given valid attributes" do
    post :save, :article => @valid_attributes
    flash[:success].should == "Successfully Saved"
    response.should redirect_to :action=>:new
  end

  describe "GET edit" do
    it "edit the particular article" do
      article = Article.create! @valid_attributes
      get :edit, :id => article.id.to_s
      assigns(:article).should eq(article)
    end
  end

  describe "PUT Update Article/:id" do
    describe "with valid params" do
      before(:each) do
        @article = mock_model(Article, :update_attributes => true)
        Article.stub!(:find).with("1").and_return(@article)
      end

      it "should find article and return object" do
        Article.should_receive(:find).with("1").and_return(@article)
        put :update, :id => "1", :article => {}
      end

      it "should update the article object's attributes" do
        @article.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1", :article => {}
      end

      it "should have a flash notice" do
        put :update, :id => "1", :article => {}
        flash[:success].should_not be_blank
      end

      it "should have a successful flash notice" do
        put :update, :id => "1", :article => {}
        flash[:success].should eql "Successfully updated"
      end

      it "should redirect to the article's edit page" do
        put :update, :id => "1", :article => {}
        response.should redirect_to :action=>:edit, :id=>@article.id
      end
    end
  end
  
  describe "Create Comment" do
    before(:each) do
      @valid_attributes_comment = {
              :article_id => articles(:one).id,
              :name => "sagework",
              :url => "sagework@gmail.com",
              :comment => "testing"
      }
      request.env["HTTP_REFERER"] = "/article/index?articles='#{articles(:one).title}'"
    end

    it "should create a new instance given valid attributes" do
      post :comment, :comment => @valid_attributes_comment
      flash[:notice].should == "Successfully commented"
      response.should redirect_to "/article/index?articles='#{articles(:one).title}'"
    end
  end

  describe "GET list" do
    it "should find all the article and return object" do
      Article.find(:all).should_not be_empty
    end
  end

end
