class ArticleController < ApplicationController
  	before_filter :require_user

	def index
		@article = Article.find_by_menu_header(params[:articles])
	end

	def new
		@article = Article.new
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

	def edit
		@article = Article.find(params[:id])
	end

	def list
		@articles = Article.all
	end
end
