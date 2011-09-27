# Factory.defind(:user) do |p| 
# 	p.
# end


Given /^I enter required values to create user$/ do
  @user = Factory.build(:user)
end

When /^I have no user$/ do
	User.delete_all
end

Then /^I need to create new admin user$/ do
    @user.new_record?.should == true
end
