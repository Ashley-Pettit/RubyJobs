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
