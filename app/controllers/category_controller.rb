class CategoryController < ApplicationController
  def index
    @category = Category.find_by_name(params[:category])
    @articles = @category.articles
    @page_title = @category.name
  end

  def edit
    @category = Category.find(params[:id])
    @page_title = "Edit Category"
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:success] = "Successfully updated"
      redirect_to :back
    else
      flash[:error] = "Failed in updating"
      render :edit 
    end

  end

  def show
  end

  def new
    @page_title = "New Category"
  end

  def save
    @category = Category.new(params[:category])
    if @category.save
      flash[:success] = "Successfully Saved"
      redirect_to :back
    else
      flash[:error] = "Failed in Saving"
      render :new
    end
  end

  def list
    @categories = Category.all
  end

end
