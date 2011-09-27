require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
            :login => "admin",
            :email => "senthil@sagework.com",
            :password => "admin",
            :password_confirmation => "admin",
            }
    @admin=User.create(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    @admin=User.create(@valid_attributes)
  end

  it "should allow valid login" do
    @admin.login = "admin"
    @admin.should have_at_least(0).error_on(:login)
  end

  it "should allow valid email" do
    @admin.email = "senthil@sagework.com"
    @admin.should have_at_least(0).error_on(:email)
  end

  it "should allow valid password" do
    @admin.password = "admin"
    @admin.should have_at_least(0).error_on(:password)
  end

  it "should allow valid password_confirmation" do
    @admin.password_confirmation = "admin"
    @admin.should have_at_least(0).error_on(:password_confirmation)
  end

  it "should not allow login that are less than 5 characters" do
    @admin.login = "sagework"
    @admin.should have_at_least(0).error_on(:login)
  end

  it "should not allow password that are less than 4 characters" do
    @admin.password = "sagework"
    @admin.should have_at_least(0).error_on(:password)
  end

  it "is not valid without a login" do
    admin = User.new :login => nil
    admin.should_not be_valid
  end

  it "is not valid without a email" do
    admin = User.new :email => nil
    admin.should_not be_valid
  end

  it "is not valid without a password" do
    admin = User.new :password => nil
    admin.should_not be_valid
  end

  it "is not valid without a password_confirmation" do
    admin = User.new :password_confirmation => nil
    admin.should_not be_valid
  end
end