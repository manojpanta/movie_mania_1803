class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user = nil
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
end
