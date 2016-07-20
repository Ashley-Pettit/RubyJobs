class AdvertismentsController < ApplicationController
  # before_action
  def index
    @advertisments = Advertisment.all
  end

  def show
    @advertisment = Advertisment.find(params[:id])
  end

  def new
    @advertisment = Advertisment.new
  end

  def create
    @advertisment = Advertisment.new(advertisment_params)
    if @advertisment.save
      flash[:notice] = "Your Advertisment was created"
      redirect_to @advertisment
    end
  end

  def edit
    @advertisment = Advertisment.find(params[:id])
  end

  def update
    @advertisment = Advertisment.find(params[:id])
  end

  def destroy
    @advertisment = Advertisment.find(params[:id])
    @advertisment.destroy
    redirect_to advertisments_path
  end

  private

  def advertisment_params
    params.require(:advertisment).permit(:company, :job_title, :location, :project)
  end

end
