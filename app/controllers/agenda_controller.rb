class AgendaController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
    @events = Event.all
    @questions = Question.all
    @users = User.all

    # $('#thumbsup').click(function() {
    #   @question_likecount += 1
    # });

  end



  def create

  end

end
