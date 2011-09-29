class TestimonialController < ApplicationController
  def index
    @testimonial = Testimonial.find(params[:id])
    @page_title = @testimonial.name
  end

  def new
   @testimonial = Testimonial.new
    @page_title = "New Testimonial"
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
    @page_title = "Edit Testimonial"
  end

def list
    @page_title = "View All Testimonials"
    if params[:sort].blank? || params[:sort] == "all"
      @testimonial = Testimonial.all
    else
      @testimonial = search(Testimonial, params[:sort])
    end
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