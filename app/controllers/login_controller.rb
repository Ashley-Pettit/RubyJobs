class LoginController < ApplicationController

  def index
  end

  #new login session
  def new
    if code_valid?
      @user = User.find_by(code: params[:input_code])
      session[:user_id] = @user.id
      @user_name = find_user_name
      if admin?(@user)
        redirect_to '/admin' and return
      else
        redirect_to '/login/profile' and return
      end
    else
      @errormessage = "Sorry this code is invalid"
      render :index
    end
  end

  def admin?(user)
    user.code == 'adminxxx'
  end

  def code_valid?
    User.find_by(code: params[:input_code])
  end

  def profile
    @user = User.find(session[:user_id])
  end

  def edit
    @user = User.find(session[:user_id])
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
      redirect_to '/agenda/index'
    else
      puts "User was not logged in. Back to home page"
      redirect_to '/login' #should this be render or redirect?
    end
  end

end
