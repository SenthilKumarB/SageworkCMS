require 'spec_helper'

describe CategoryController do
  fixtures :users
  before(:each) do
    @valid_attributes = {
            :name => "sagework",
            :description => "testing",
            :position=> 1
    }
    controller.stub!(:require_user).and_return(users)
  end

 describe "GET 'new'" do
    it "should get new" do
      get :new
      response.should render_template('new')
    end
  end

  describe "GET Create" do
    it "should create a new instance given valid attributes" do
      post :save, :category => @valid_attributes
      flash[:success].should == "Successfully Saved"
      response.should redirect_to :action=>:new
    end
  end

   describe "GET edit" do
    it "edit the particular category" do
      category = Category.create! @valid_attributes
      get :edit, :id => category.id.to_s
      assigns(:category).should eq(category)
    end
  end

  describe "PUT Update Category/:id" do
    describe "with valid params" do
      before(:each) do
        @category = mock_model(Category, :update_attributes => true)
        Category.stub!(:find).with("1").and_return(@category)
      end

      it "should find category and return object" do
        Category.should_receive(:find).with("1").and_return(@category)
        put :update, :id => "1", :category => {}
      end

      it "should update the category object's attributes" do
        @category.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1", :category => {}
      end

      it "should have a flash notice" do
        put :update, :id => "1", :category => {}
        flash[:success].should_not be_blank
      end

      it "should have a successful flash notice" do
        put :update, :id => "1", :category => {}
        flash[:success].should eql "Successfully updated"
      end

      it "should redirect to the category's edit page" do
        put :update, :id => "1", :category => {}
        response.should redirect_to :action=>:edit, :id=>@category.id
      end
    end
  end

  describe "GET list" do
    it "should find all the category and return object" do
      Category.find(:all).should_not be_empty
    end
  end
end