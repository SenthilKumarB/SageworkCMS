require 'spec_helper'

describe Category do
  before(:each) do
    @valid_attributes = {
            :name => "sagework",
            :description => "testing",
            :position=> 1            
            }
    @category=Category.create(@valid_attributes)
  end
  it "should create a new instance given valid attributes" do
    @category=Category.create(@valid_attributes)
  end
  end