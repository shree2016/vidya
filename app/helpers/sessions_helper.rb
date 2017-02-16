module SessionsHelper
  def log_in(form)
    session[:form_id] = form.id
  end
  def current_user
    @current_user ||= Form.find_by(id: session[:user_id])
  end
  def logged_in?
    !current_user.nil?
  end
  def authenticate

  end
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
