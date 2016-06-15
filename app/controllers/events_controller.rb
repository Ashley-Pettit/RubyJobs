class EventsController < ApplicationController

  def index
    @events = Event.order(:time)
  end

  def increment_like
    @question = Question.find(params[:id])
    @question.question_likes += 1
    @question.save
  end

end
