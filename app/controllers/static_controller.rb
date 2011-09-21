class StaticController < ApplicationController
  def site_map
  	@page_title = "Site Map"
  end

  def contact
  	@page_title = "Contact"
  end

  def contact_email
  	@contact_email = params[:contact_email]
  	user_captcha = params[:user_captcha]
   	first_captcha = params[:first_captcha]
   	second_captcha = params[:second_captcha]
   	system_captcha = first_captcha.to_i + second_captcha.to_i
   	if user_captcha.to_i == system_captcha.to_i
    	if UserMailer.contact_email(@contact_email).deliver
  			flash[:success] = "Your Contact Mail successfully sent to us, we will get back to you soon..."
  		else
  			flash[:error] = "Failed in contacting us"
  		end
  	else
    	flash[:error] = "Recaptcha error"
    end
  	redirect_to :back
  end

end
