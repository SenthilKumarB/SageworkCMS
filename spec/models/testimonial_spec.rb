require 'spec_helper'

describe Testimonial do

  before(:each) do
     @valid_attributes = {
            :name => "Ganesh Gunasegaran",
            :quotes => "Sagework - Simplify IT",
            :company => "Sagework Software Private Ltd",
            :position => 1
           }
    @testimonial=Testimonial.create(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    @testimonial=Testimonial.create(@valid_attributes)
  end
end