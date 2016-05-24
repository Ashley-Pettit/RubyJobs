class LoginController < ApplicationController

  def index
  end

  def new
    if @user = User.find_by(code: params[:input_code])
      if @user.code == 'adminxxx'
        session[:user_id] = @user.id
        redirect_to '/agenda/index' and return
      end
      session[:user_id] = @user.id
      @user_name = find_user_name
      redirect_to '/login/profile'
    else
      @errormessage = "Sorry this code is invalid"
      render :index
    end
  end

  def logout
    session.clear
    render :index
  end

  def update
    if logged_in?
      puts 'user was logged in'
      user = User.find(session[:user_id])
      user.name = params[:name_input]
      user.email = params[:email_input]
      user.save
      redirect_to '/agenda/index' #should this be render?
    else
      puts "User was not logged in. Back to home page"
      redirect_to '/login' #should this be render or redirect?
    end
  end

end
