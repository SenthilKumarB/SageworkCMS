class StaticController < ApplicationController
  def site_map
  	@page_title = "Site Map"
  end

  def contact
  	@page_title = "Contact"
  end

  def contact_email
  	render :text => "#TODO Contact EMAIL"
  end

end
