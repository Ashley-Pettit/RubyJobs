class AdminController < ApplicationController

  def index
    @events = Event.all
  end

  def new

  end

  def create
    event = Event.new
    event.title = params[:event_title_input]
    event.description = params[:description_input]
    event.speaker = params[:speaker_input]
    event.save
    render :new
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def edit
    @event = Event.find_by_id(params[:id])
    redirect_to '/admin'
  end

  def delete
    event = Event.find_by_id(params[:id])
    event.destroy
    redirect_to '/admin'
  end

end
