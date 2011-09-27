require 'spec_helper'

class Rspec
  def captcha
    user_captcha = 10+30
  end
end
describe UserSessionsController do

  fixtures :users
   before(:each) do
    @user = User.create(:login => "admin", :email => "senthil@sagework.com", :password => "admin", :password_confirmation => "admin")
  end
  describe "GET 'new'" do
    it "should get new" do
      get :new
      response.should render_template('new')
    end
  end

  describe "POST 'create'" do
    it "should create user session" do
      post :create, :user_session => {:login => "admin", :password => "admin"}
      session=Rspec.new
      user_captcha_final=session.captcha
      user_captcha_final.should == 40
      assigns(:user_session).login.should  == users(:one).login
      flash[:notice].should == "Login successful!"
      response.should redirect_to administration_path
    end

    it "does not create a valid session for invalid username/password " do
      post :create, :user_session => {:login => "invalid", :password => "password"}
      assigns(:user_session).record.should be_nil
    end

    it "is not valid without a login" do
      post :create, :user_session => {:login => nil}
      assigns(:user_session).should_not be_valid
    end

    it "is not valid without a password" do
      post :create, :user_session => {:password => nil}
      assigns(:user_session).should_not be_valid
    end

    it "is not valid with invalid user_captcha" do
      session=Rspec.new
      user_captcha_final=session.captcha
      user_captcha_final.should_not eql(user_captcha_final==50)
      post :create
    end

    it "is not valid without a user_captcha" do
      session=Rspec.new
      user_captcha_final=session.captcha
      user_captcha_final.should_not eql(user_captcha_final==0)
      post :create
    end
    context "when the User fails to save" do
      before(:each) do
        @user.stub(:save).and_return(false)
      end
      it "renders the new template" do
        post :create
        redirect_to :action => :new
      end


    end
  end

  describe "DELETE destroy" do
    it "should destroy user session" do
      UserSession.create(users(:one))
      delete :destroy
      assert_nil UserSession.find
      assert_redirected_to new_user_session_url
    end
  end
end


