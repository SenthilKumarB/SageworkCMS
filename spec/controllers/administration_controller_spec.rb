require 'spec_helper'

describe AdministrationController do
 fixtures :users
 it "index action should require admin" do
   get :index
   response.should redirect_to(new_user_session_url)
   flash[:notice].should == "You must be logged in to access this page"
 end

 it "should render index template on index call when logged in" do
   controller.stub!(:require_user).and_return(users) 
   get 'index'
 end
end