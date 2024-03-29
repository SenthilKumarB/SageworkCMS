class CmsfileController < ApplicationController
  # require 'ftools'
  before_filter :require_user

  def index
  	unless params[:view_directory_info].blank?
      path = "#{Rails.root}/public/#{params[:view_directory_info]}"
    	files = []
  		Dir.new(path).entries.each { |n| files.push(n) unless File.directory?(n) }
  		@directory_path = files
  	  # @directory_path = Dir.entries(path)
  	end
  end

  def file_upload
    setting = Setting.upload(params[:fileupload], params[:directoryinfo])
    flash[:notice] = "Successfully uploaded"
    redirect_to :controller => "cmsfile", :action => "index"
  end

  def file_directory_list
  end
end
