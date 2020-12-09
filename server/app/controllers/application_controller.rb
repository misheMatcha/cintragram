class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  private
  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?(user)
    !!current_user
  end
end