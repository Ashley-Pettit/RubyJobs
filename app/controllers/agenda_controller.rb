class AgendaController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
    @events = Event.all
    @questions = Question.all
    @users = User.all
  end

  def create

  end

end
