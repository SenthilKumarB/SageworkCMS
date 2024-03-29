class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user_session, :current_user, :website_title, :website_description, :website_version, :search

  private

  def search(model, params)
    condition = params == "year" ? Time.now.year : Time.now.month
    instance_value = []
    model.all.group_by do |attr|
      condition_search = (params == "year") ? (attr.created_at.year == Time.now.year) :
                               (attr.created_at.month == Time.now.month && attr.created_at.year == Time.now.year)
      instance_value << attr if condition_search
    end
    return instance_value
  end
    
  def website_title
    setting = Setting.find_by_name("website_title")
    setting.blank? ? "" : setting.value
  end

  def website_description
    setting = Setting.find_by_name("website_description")
    setting.blank? ? "" : setting.value
  end

  def website_version
    setting = Setting.find_by_name("website_version")
    setting.blank? ? "" : setting.value
  end
      
  def current_user_session
    logger.debug "ApplicationController::current_user_session"
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    logger.debug "ApplicationController::current_user"
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

  def require_user
    logger.debug "ApplicationController::require_user"
    unless current_user
      store_location
      flash[:notice] = "You must be logged in to access this page"
      redirect_to new_user_session_url
      return false
    end
  end

  def require_no_user
    logger.debug "ApplicationController::require_no_user"
    if current_user
      store_location
      flash[:notice] = "You must be logged out to access this page"
      redirect_to account_url
      return false
    end
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
