class AdvertismentsController < ApplicationController

  def index
    #This method should show developers available advertisments
  end

  def show
    #Here a developer can read 1 particular job advertisment

  end

  def new
    #Here an advertiser sees a screen and should be able to make an advertisment.
  end

  def create
    #Executed by the post request on from the new page. After ad created should render the index page with a sucessful alert.
    # advertisment = Advertisment.New
    # advertisment.save

    render :index
  end

  def edit
  end

  def update
  end

  def delete
  end

end
