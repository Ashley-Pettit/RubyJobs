class QuestionsController < ApplicationController

  def index
    @events = Event.all
    @questions = Questions.all
  end

  def new
  end

  def create
    event = Event.find_by(id: params[:id]).id
    question = Question.new
    question.description = params[:question_body]
    question.event = event
    question.user_id = session[:user_id]
    question.question_likes = 0
    question.save
    redirect_to "/event/#{params[:id]}"
  end




end
