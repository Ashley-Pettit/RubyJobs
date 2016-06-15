class AgendaController < ApplicationController

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

end
