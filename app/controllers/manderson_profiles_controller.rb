class MandersonProfilesController < ApplicationController
  #before_action :authenticate_grad_user!
  #before_action :set_manderson_profile, only: [:show_old, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /manderson_profiles
  # GET /manderson_profiles.json
    
  def index
    @manderson_profiles = MandersonProfile.all
  end

  # GET /manderson_profiles/1
  # GET /manderson_profiles/1.json
  def show
    @manderson_profile = MandersonProfile.find(params[:id])
  end

  # GET /manderson_profiles/new
  def new
    @manderson_profile = MandersonProfile.new
  end

  # GET /manderson_profiles/1/edit
  def edit
    @manderson_profile = MandersonProfile.find(params[:id])
  end

  # POST /manderson_profiles
  # POST /manderson_profiles.json
  def create
    @manderson_profile = MandersonProfile.new(manderson_profile_params)

    respond_to do |format|
      if @manderson_profile.save
        format.html { redirect_to manderson_profiles_url, notice: 'Manderson profile was successfully created.' }
        format.json { render :show, status: :created, location: @manderson_profile }
      else
        format.html { render :new }
        format.json { render json: @manderson_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manderson_profiles/1
  # PATCH/PUT /manderson_profiles/1.json
  def update
    @manderson_profile = MandersonProfile.find(params[:id])
    respond_to do |format|
      if @manderson_profile.update(manderson_profile_params)
        format.html { redirect_to manderson_profiles_url, notice: 'Manderson profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @manderson_profile }
      else
        format.html { render :edit }
        format.json { render json: @manderson_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manderson_profiles/1
  # DELETE /manderson_profiles/1.json
  def destroy
    @manderson_profile = MandersonProfile.find(params[:id])
    @manderson_profile.destroy
    respond_to do |format|
      format.html { redirect_to manderson_profiles_url, notice: 'Manderson profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def resolve_layout
      case action_name
        when "index", "new", "create", "edit", "destroy"
          "dashboard"
        else
          "launch"
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    #def set_manderson_profile
    #  @manderson_profile = MandersonProfile.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manderson_profile_params
      params.require(:manderson_profile).permit(:id, :first_name, :middle_initial, :last_name, :nickname, :email, :phone, :hometown, :candidate_type, :grad_class, :ug_school, :ug_degree, :ug_year, :work_experience, :activities_honors, :volunteerism, :internship, :cskills, :manderson_profile_photo, :manderson_profile_cv, :favorite_book, :favorite_quote, :three_word_description, :something_unique,  :status, :registered)
    end
end
