class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def new
    @user_session = UserSession.new
  end

  def create
  	user_captcha = params[:user_captcha]
   	first_captcha = params[:first_captcha]
   	second_captcha = params[:second_captcha]
   	system_captcha = first_captcha.to_i + second_captcha.to_i
   	if user_captcha.to_i == system_captcha.to_i
    	@user_session = UserSession.new(params[:user_session])
    	if @user_session.save
      		flash[:notice] = "Login successful!"
      		redirect_back_or_default administration_path
    	else
    		flash[:error] = @user_session.errors.full_messages
      		render :action => :new
    	end
    else
    	flash[:notice] = "Recaptcha error"
    	redirect_to :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_back_or_default new_user_session_url
  end
end
