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
    question.question_likes = 0
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
    # need an algorithm that balances time and likes
  end

  def most
    event_id = Event.find_by_id(params[:id]).id
    @most_likes_qs = questions.sort { |a,b| b.question_likes <=> a.question_likes }
  end

end
