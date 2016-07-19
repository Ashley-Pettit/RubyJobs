class CompanyProfilesController < ApplicationController
  def index
    @company = CompanyProfile.all
  end

  def show
    @company = CompanyProfile.find(params[:id])
  end

  def new
    @company = CompanyProfile.new
  end

  def create
    @company = CompanyProfile.new(company_profile_params)
    if @company.save
      flash[:notice] = "Your Company Profile has been created"
      redirect_to @company
    end
  end

  private

  def company_profile_params
    params.require(:company_profile).permit(:name, :bio, :website)
  end
end
