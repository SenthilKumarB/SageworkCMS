class HomeController < ApplicationController
  def index
		@article = Article.find_all_by_show_home_page("1", :limit => 5, :order => "created_at desc")
  	@page_title = "Home Page"
  end
end
