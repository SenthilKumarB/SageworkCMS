class PageController < ApplicationController
	before_filter :require_user

	def index
		@page = Page.find_by_menu_header(params[:pages])
	end

	def new
		@page = Page.new
	end

	def save
		@page = Page.new(params[:pages])
		if @page.save
			flash[:success] = "Successfully Saved"
			redirect_to :back
		else
			flash[:error] = "Failed in saving"
			render :new
		end
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])
		if @page.update_attributes(params[:pages])
			flash[:sucess] = "Sucessfully updated"
			redirect_to :back
		else
			flash[:error] = "Failed in updating"
			render :edit
		end
	end

	def list
		@pages = Page.all
	end

end