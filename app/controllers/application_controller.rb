class ApplicationController < ActionController::Base

  add_flash_types :notice, :another_custom_type
  protect_from_forgery with: :exception
  include SessionsHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

end
