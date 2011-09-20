class ArticleController < ApplicationController
  	before_filter :require_user

	def index
		@article = Article.find_by_title(params[:articles])
    @page_title = @article.title
	end

	def new
		@article = Article.new
    @page_title = "New Article"
	end

	def save
		@article = Article.new(params[:articles])
		if @article.save
			flash[:success] = "Successfully Saved"
			redirect_to :back
		else
			flash[:error] = "Failed in saving"
			render :new
		end
    end

    def comment
      @comment = Comment.new(params[:comments])      
      if @comment.save
        flash[:notice] = "successfully saved"
      else
        flash[:error] = "Failed in saving"
      end
      redirect_to :back      
    end

	def edit
		@article = Article.find(params[:id])
    @page_title = "Edit Article"
	end

    def update
      @article = Article.find(params[:id])
      if @article.update_attributes(params[:articles])
        flash[:success] = "Successfully updated"
        redirect_to :back
      else
        flash[:error] = "Failed in updating"
        render :edit
      end
    end

	def list
		@articles = Article.all
    @page_title = "View All Articles"
  end

end
