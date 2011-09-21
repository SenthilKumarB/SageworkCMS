class PageController < ApplicationController
	before_filter :require_user

	def index
	    @page = Page.find_by_menu_header(params[:pages])
	    @page_title = @page.menu_header

	    respond_to do |format|
	      format.html # index.html.erb
	      format.rss { render :layout => false }
	    end
	 end

   	def rss_feed
	    @pages = Page.all
	    respond_to do |format|
	      format.html # index.html.erb
	      format.rss { render :layout => false }
	    end
  	end

	def new
		@page = Page.new
		@page_title = "New Page"
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
		@page_title = "Edit Page"
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
		@page_title = "View All Pages"
	end

end
