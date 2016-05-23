class LoginController < ApplicationController
  def index
  end

  def new
    puts params[:input_code]
    if true
      #Send the user to the profile page
      redirect_to '/login/profile'
    else
      #ADD ERROR MSG AND STAY ON SAME PAGE
    end
  end

  def update
    #updates the DB HERE
    redirect_to '/agenda/index'
  end

end
