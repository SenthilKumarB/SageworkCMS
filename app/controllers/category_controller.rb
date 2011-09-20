class CategoryController < ApplicationController
  def index
    @category = Category.find_by_name(params[:category])
    @articles = @category.articles
    @page_title = @category.name
  end

  def edit
  end

  def show
  end

  def new
  end

end
