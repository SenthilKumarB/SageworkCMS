require 'spec_helper'
describe User do
	context "when first created" do
		it "is empty" do
			user = User.new
		end
	end
end