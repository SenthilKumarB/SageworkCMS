require 'spec_helper'

describe Page do
  before(:each) do
    @valid_attributes = {
            :title => "sagework",
            :menu_header => "sageworkcms",
            :page_description => "testing",
            :position=> 1
            }
    @page=Page.create(@valid_attributes)
  end
  it "should create a new instance given valid attributes" do
    @page=Page.create(@valid_attributes)
  end
end