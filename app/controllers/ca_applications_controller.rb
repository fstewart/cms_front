class CaApplicationsController < ApplicationController
  def new
    @applicant = CaApplicant.new
  end

  def create
    @applicant = CaApplicant.new(params[:id])
    @applicant.request = request
    if @applicant.deliver
      flash.now[:notice] = 'Thank you for your submitting your application. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end