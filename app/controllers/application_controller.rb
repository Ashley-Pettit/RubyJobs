class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def logged_in?
    session[:user_id] #This means there is a session id.
  end

end

#THIS IS THE BASE CONTROLLER
