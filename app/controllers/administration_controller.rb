class AdministrationController < ApplicationController
  before_filter :require_user
  def index
  	@page_title = "Administration"
  end

end
