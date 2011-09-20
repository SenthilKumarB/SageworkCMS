class HomeController < ApplicationController

  before_filter :require_user

  def index
  	@article = Article.find_all_by_show_home_page("1").last
  	@page_title = "Home Page"
  end

end
