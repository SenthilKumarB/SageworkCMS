class CmsfileController < ApplicationController
  before_filter :require_user

  def index
  end

  def file_upload
    setting = Setting.upload(params[:fileupload], params[:directoryinfo])
    render :text => "Successfully uploaded"
  end

  def file_directory_list
  end
  
end
