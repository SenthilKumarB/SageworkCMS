class PageController < ApplicationController
	before_filter :require_user, :except => ['index', 'rss_feed']

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
			redirect_to :action => :new
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
			flash[:success] = "Successfully updated"
			redirect_to :action => :edit, :id => @page.id
		else
			flash[:error] = "Failed in updating"
			render :edit
		end
	end

  def list
    @page_title = "View All Pages"
    if params[:sort].blank? || params[:sort] == "all"
      @pages = Page.all
    else
      @pages = search(Page, params[:sort])
    end
  end


end
