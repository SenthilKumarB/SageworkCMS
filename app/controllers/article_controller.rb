class ArticleController < ApplicationController
  before_filter :require_user, :except => ['index', 'comment', 'rss_feed', 'news']

  def index
    @article = Article.find_by_title(params[:articles])
    @page_title = @article.title
    respond_to do |format|
      format.html # index.html.erb
      format.rss { render :layout => false }
    end
  end

  def rss_feed
    @articles = Article.all
    respond_to do |format|
      format.html # index.html.erb
      format.rss { render :layout => false }
    end
  end

	def new
		@article = Article.new
    @page_title = "New Article"
	end

	def save
		@article = Article.new(params[:articles])
		if @article.save
			flash[:success] = "Successfully Saved"
			redirect_to :action => :new
		else
			flash[:error] = "Failed in saving"
			render :new
		end
  end

  def comment
    @comment = Comment.new(params[:comments])      
    if @comment.save
      flash[:notice] = "Successfully commented"
    else
      flash[:error] = "Failed in commenting"
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
      redirect_to :action => :edit, :id => @article.id
    else
      flash[:error] = "Failed in updating"
      render :edit
    end
  end

  def list
     @page_title = "View All Articles"
     if params[:sort].blank? || params[:sort] == "all"
      @articles = Article.all
     else
      @articles = search(Article, params[:sort])
     end
  end

  def news
    @article = Article.paginate(:page => params[:page], :per_page => 10, :order => "created_at desc")
  end

end
