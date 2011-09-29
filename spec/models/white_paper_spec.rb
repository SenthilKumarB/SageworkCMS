require 'spec_helper'

describe WhitePaper do

  before(:each) do
     @valid_attributes = {
            :name => "Sagework",
            :filename => "sagework_1317291805.jpg",
            :content_type => "image/jpeg"
           }
    @white_paper=WhitePaper.create(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    @white_paper=WhitePaper.create(@valid_attributes)
  end
end