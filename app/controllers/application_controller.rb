class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :page_title, :find_user_name, :prepend_dash_to_user_name, :find_user_code

  def logged_in?
    session[:user_id]
  end

  def find_user_name
    if logged_in?
      User.find_by(id: session[:user_id]).name
    end
  end

  def find_user_code
    if logged_in?
      User.find_by(id: session[:user_id]).code
    end
  end

  def prepend_dash_to_user_name
    if logged_in?
      "  - " + find_user_name
    end
  end


end

#THIS IS THE BASE CONTROLLER
