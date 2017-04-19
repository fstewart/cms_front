class CulverhouseAmbassadorsController < ApplicationController
  
  def show
  	@page = Page.friendly.find(params[:id])
    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted
  end

  def new
    @ca_application = CaApplication.new
  end

  # POST /ca_applications
  # POST /ca_applications.json
  def create
    @ca_application = CaApplication.new(application_params)
  
    respond_to do |format|
      if verify_recaptcha(model: @ca_application) && @ca_application.save
        format.html { redirect_to ca_thanks_path, notice: 'Your Application was successfully submitted.' }
        format.json { render :show, status: :created, location: @ca_application }
      else
        format.html { render :new }
        format.json { render json: @ca_application.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def thanks
    
  end

  private

  def application_params
    params.require(:ca_application).permit(:name, :email, :strengths, :preferred_name, :home_phone, :cwid, :current_address, :permanent_address, :classification, :major, :minor, :gpa, :graduation_date, :cell_phone, :availability, :aspirations, :meeting_availability, :benefits, :hours, :committment, :prior_service, :ca_cv, :photo )
  end

end
