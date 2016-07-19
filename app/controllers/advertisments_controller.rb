class AdvertismentsController < ApplicationController

  def index
    #This method should show developers available advertisments
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
  end

  def update
  end

  def delete
  end

  private

  def advertisment_params
    params.require(:advertisment).permit(:company, :job_title, :location)
  end

end
