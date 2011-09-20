class SettingsController < ApplicationController
  before_filter :require_user

  def index
  	@setting = Setting.new
    @page_title = "Admin Settings"
  end

  def create
  	params.each do |k,v|
  		unless v.blank? && v == ""
  			s = Setting.find_by_name(k)
  			unless s.blank? 
  			 	s.update_attributes(:value => v)
  			end
  		end
  	end
  	redirect_to :back
  end

end
