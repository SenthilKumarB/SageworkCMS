class HomeController < ApplicationController

  before_filter :require_user

  def index
  	@article = Article.find_by_show_home_page("1")
  end

end
