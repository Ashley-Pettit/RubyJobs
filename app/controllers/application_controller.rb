class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :page_title, :find_user_name, :prepend_dash_to_user_name, :find_user_code, :destroy_questions


end
