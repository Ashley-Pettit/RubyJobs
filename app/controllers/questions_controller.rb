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
    question.save
    redirect_to "/event/#{params[:id]}"
  end


end
