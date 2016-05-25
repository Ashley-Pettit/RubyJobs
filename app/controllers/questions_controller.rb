class QuestionsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
  end

  def create
  end

end
