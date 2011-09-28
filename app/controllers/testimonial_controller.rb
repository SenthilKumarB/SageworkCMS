class TestimonialController < ApplicationController
  def index
  end

  def new
   @testimonial = Testimonial.new
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  def list
    @testimonial = Testimonial.all
  end

  def update
    @testimonial = Testimonial.find(params[:id])
    if @testimonial.update_attributes(params[:testimonial])
      flash[:success] = "Testimonial Successfully updated"
      redirect_to :action => :edit, :id => @testimonial.id
    else
      flash[:error] = "Failed in Updating Testimonial"
      render :edit
    end
  end

  def save
    @testimonial = Testimonial.new(params[:testimonial])
    if @testimonial.save
      flash[:success] = "Testimonial Successfully saved"
      redirect_to :back
    else
      flash[:error] = "Failed in saving Testimonial"
      render :new
    end
  end

end
