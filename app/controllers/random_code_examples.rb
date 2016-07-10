class AdminController < ApplicationController

  def index
    @events = Event.order(:time)
  end

  def new

  end

  def create
    event = Event.new
    event.title = params[:event_title_input]
    event.description = params[:description_input]
    event.speaker = params[:speaker_input]
    event.time = params[:event_time_input]
    event.save
    @events = Event.order(:time)
    render :index
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def update
    @events = Event.order(:time)
    @event = Event.find_by_id(params[:id])
    event = Event.find_by_id(params[:id])
    event.title = params[:event_title_input]
    event.description = params[:description_input]
    event.speaker = params[:speaker_input]
    event.time = params[:event_time_input]
    event.save
    render :index
  end

  def delete
    event = Event.find_by_id(params[:id])
    event.destroy
    redirect_to '/admin'
  end

end

class QuestionsController < ApplicationController

  def index
    @events = Event.all
    @questions = Questions.all
  end

  def new
  end

  def create
    question = Question.new
    question.event = Event.find_by_id(params[:id]).id
    question.description = params[:question_body]
    question.user_id = session[:user_id]
    question.question_likes = 1
    question.save
    redirect_to "/event/#{params[:id]}"
  end

  def random
    event_id = Event.find_by_id(params[:id]).id
    questions = Questions.find_by(event_id: event_id)
    @questions_shuffle = questions.shuffle
  end

  def recent
    event_id = Event.find_by_id(params[:id]).id
    questions = Questions.find_by(event_id: event_id)
    @recent_sort_qs = questions.sort { |a,b| b.created_at <=> a.created_at }
  end

  def trending
    event_id = Event.find_by_id(params[:id]).id
    #number of likes in last 5 minutes
  end

  def most
    event_id = Event.find_by_id(params[:id]).id
    @most_likes_qs = questions.sort { |a,b| b.question_likes <=> a.question_likes }
  end

end

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

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :page_title, :find_user_name, :prepend_dash_to_user_name, :find_user_code, :destroy_questions

  def logged_in?
    session[:user_id]
  end

  def find_user_name
    if logged_in?
       User.find(session[:user_id]).name ||= "Anonymous"
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

  def logged_in?
    session[:user_id]
  end

  def find_user_name
    if logged_in?
       User.find(session[:user_id]).name ||= "Anonymous"
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

def index
  @events = Event.order(:time)
end

def show
  @event = Event.find(params[:id])
  @events = Event.all
  @questions = Question.all
  @users = User.all
end


def create
end
