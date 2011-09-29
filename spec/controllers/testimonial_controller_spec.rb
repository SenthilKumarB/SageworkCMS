require 'spec_helper'

describe TestimonialController do
   fixtures :testimonials

   before(:each) do
    @valid_attributes = {
            :name => "Ganesh Gunasegaran",
            :quotes => "Sagework - Simplify IT",
            :company => "Sagework Software Private Ltd",
            :position => 1
           }
   end
   
  describe "GET 'index'" do
    it "should get index" do
      testimonial = Testimonial.find(testimonials(:one).id)
      @page_title = testimonial.name
      get :index, :id=>testimonial.id
    end
  end

 it "should create new testimonial" do
    get 'new'
  end

  it "should create a new instance given valid attributes" do
    post :save, :testimonial => @valid_attributes
    flash[:success].should == "Testimonial Successfully saved"
    response.should redirect_to :action=>:new
  end

  describe "GET edit" do
    it "edit the particular testimonial" do
      testimonial = Testimonial.create! @valid_attributes
      get :edit, :id => testimonial.id.to_s
      assigns(:testimonial).should eq(testimonial)
    end
  end

  describe "PUT Update Testimonial/:id" do
    describe "with valid params" do
      before(:each) do
        @testimonial = mock_model(Testimonial, :update_attributes => true)
        Testimonial.stub!(:find).with("1").and_return(@testimonial)
      end

      it "should find testimonial and return object" do
        Testimonial.should_receive(:find).with("1").and_return(@testimonial)
        put :update, :id => "1", :testimonial => {}
      end

      it "should update the testimonial object's attributes" do
        @testimonial.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1", :testimonial => {}
      end

      it "should have a flash notice" do
        put :update, :id => "1", :testimonial => {}
        flash[:success].should_not be_blank
      end

      it "should have a successful flash notice" do
        put :update, :id => "1", :testimonial => {}
        flash[:success].should eql "Testimonial Successfully updated"
      end

      it "should redirect to the testimonial's edit page" do
        put :update, :id => "1", :testimonial => {}
        response.should redirect_to :action=>:edit, :id=>@testimonial.id
      end
    end
  end

   describe "GET list" do
    it "should find all the testimonial and return object" do
      Testimonial.find(:all).should_not be_empty
    end
  end


end
