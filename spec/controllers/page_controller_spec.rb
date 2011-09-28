require 'spec_helper'

describe PageController do
  fixtures :users
  fixtures :pages
  before(:each) do
    @valid_attributes = {
            :title => "sagework",
            :menu_header => "sageworkcms",
            :page_description => "testing",
            :position=> 1
            }
    controller.stub!(:require_user).and_return(users)
  end

  describe "GET 'index'" do
    it "should get index" do
      page = Page.find_by_menu_header(pages(:one).menu_header)
      @page_title = page.menu_header
       get :index,:pages=>@page_title
    end
  end

  describe "GET 'new'" do
    it "should get new" do
      get :new
      response.should render_template('new')
    end
  end

  describe "GET Create" do
    it "should create a new instance given valid attributes" do
      post :save, :page => @valid_attributes
      flash[:success].should == "Successfully Saved"
      response.should redirect_to :action=>:new
    end
  end

   describe "GET edit" do
    it "edit the particular Page" do
      page = Page.create! @valid_attributes
      get :edit, :id => page.id.to_s
      assigns(:page).should eq(page)
    end
  end

  describe "PUT Update Page/:id" do
    describe "with valid params" do
      before(:each) do
        @page = mock_model(Page, :update_attributes => true)
        Page.stub!(:find).with("1").and_return(@page)
      end

      it "should find page and return object" do
        Page.should_receive(:find).with("1").and_return(@page)
        put :update, :id => "1", :page => {}
      end

      it "should update the page object's attributes" do
        @page.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1", :page => {}
      end

      it "should have a flash notice" do
        put :update, :id => "1", :page => {}
        flash[:success].should_not be_blank
      end

      it "should have a successful flash notice" do
        put :update, :id => "1", :page => {}
        flash[:success].should eql "Successfully updated"
      end

      it "should redirect to the page's edit page" do
        put :update, :id => "1", :page => {}
        response.should redirect_to :action=>:edit, :id=>@page.id
      end
    end
  end

  describe "GET list" do
    it "should find all the Page and return object" do
      Page.find(:all).should_not be_empty
    end
  end
end