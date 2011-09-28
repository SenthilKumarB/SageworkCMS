class WhitePaperController < ApplicationController
  def index
    @white_paper = WhitePaper.find(params[:id])
    @page_title = @white_paper.name
  end

  def new
    @page_title = "New White Paper"
  end

  def edit
    @white_paper = WhitePaper.find(params[:id])
    @page_title = "Edit White Paper"    
  end

  def update
    @white_paper = WhitePaper.upload(params[:fileupload], params[:white_paper_name], params[:id])
    if @white_paper
      flash[:success] = "WhitePaper Successfully uploaded"
    else
      flash[:error] = "Failed in uploading files"
    end
    redirect_to :action => :edit, :id => @white_paper.id
  end

  def save
  white_paper = WhitePaper.upload(params[:fileupload], params[:white_paper_name], 0)
  if white_paper
    flash[:success] = "WhitePaper Successfully upload"
  else
    flash[:error] = "Failed in uploading WhitePaper"
  end
  redirect_to :action => :new
  end

  def list
    @page_title = "View All White Papers"
    @white_papers = WhitePaper.all
  end
end